TARGET = main

all: 
	pdflatex $(TARGET)
	bibtex $(TARGET)
	pdflatex $(TARGET)
	pdflatex $(TARGET)

pdf: 
	pdflatex $(TARGET)

spell:
	aspell -ttex -c $(TARGET).tex

clean:
	@ rm -f *.aux *.bak *.bbl *.blg *.brf *lbbl *lblg *.log *.out *.pdf *.toc

