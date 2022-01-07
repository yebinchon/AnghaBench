
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 unsigned int NLSStringWidth (int *) ;
 int SHOUT ;
 int * STRNULL ;
 int STRlistflags ;
 int * Strchr (int *,char) ;
 size_t Strlen (int *) ;
 unsigned int TermH ;
 scalar_t__ Tty_raw_mode ;
 scalar_t__ didfds ;
 int filetype (int *,int *) ;
 int flush () ;
 int isatty (int) ;
 int lbuffed ;
 unsigned int max (unsigned int,unsigned int) ;
 int print_with_color (int *,size_t,int ) ;
 int * varval (int ) ;
 int xprintf (char*,int *,...) ;
 int xputchar (char) ;

void
print_by_column(Char *dir, Char *items[], int count, int no_file_suffix)
{
    int i, r, c, columns, rows;
    size_t w;
    unsigned int wx, maxwidth = 0;
    Char *val;
    int across;

    lbuffed = 0;


    across = ((val = varval(STRlistflags)) != STRNULL) &&
      (Strchr(val, 'x') != ((void*)0));

    for (i = 0; i < count; i++) {
 maxwidth = max(maxwidth, (unsigned int) NLSStringWidth(items[i]));
    }

    maxwidth += no_file_suffix ? 1 : 2;
    columns = TermH / maxwidth;
    if (!columns || !isatty(didfds ? 1 : SHOUT))
 columns = 1;
    rows = (count + (columns - 1)) / columns;

    i = -1;
    for (r = 0; r < rows; r++) {
 for (c = 0; c < columns; c++) {
     i = across ? (i + 1) : (c * rows + r);

     if (i < count) {
  wx = 0;
  w = Strlen(items[i]);
  if (no_file_suffix) {

      xprintf("%S", items[i]);
  }
  else {

      xprintf("%-S%c", items[i], filetype(dir, items[i]));
      wx++;
  }


  if (c < (columns - 1)) {
      w = NLSStringWidth(items[i]) + wx;
      for (; w < maxwidth; w++)
   xputchar(' ');
  }
     }
     else if (across)
  break;
 }
 if (Tty_raw_mode)
     xputchar('\r');
 xputchar('\n');
    }

    lbuffed = 1;
    flush();
}
