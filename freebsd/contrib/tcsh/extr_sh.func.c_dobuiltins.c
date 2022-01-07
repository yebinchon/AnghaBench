
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
struct biltins {int bname; } ;
typedef int Char ;


 int TermH ;
 scalar_t__ Tty_raw_mode ;
 int USE (int **) ;
 struct biltins const* bfunc ;
 int cleanup_push (scalar_t__*,int ) ;
 int cleanup_until (scalar_t__*) ;
 int flush () ;
 scalar_t__ lbuffed ;
 int lbuffed_cleanup ;
 unsigned int max (unsigned int,unsigned int) ;
 size_t nbfunc ;
 int nt_print_builtins (unsigned int) ;
 unsigned int strlen (int ) ;
 int xprintf (char*,int ) ;
 int xputchar (char) ;

void
dobuiltins(Char **v, struct command *c)
{



    const struct biltins *b;
    int row, col, columns, rows;
    unsigned int w, maxwidth;

    USE(c);
    USE(v);
    lbuffed = 0;
    cleanup_push(&lbuffed, lbuffed_cleanup);


    for (maxwidth = 0, b = bfunc; b < &bfunc[nbfunc]; ++b)
 maxwidth = max(maxwidth, strlen(b->bname));
    ++maxwidth;

    columns = (TermH + 1) / maxwidth;
    if (!columns)
 columns = 1;
    rows = (nbfunc + (columns - 1)) / columns;

    for (b = bfunc, row = 0; row < rows; row++) {
 for (col = 0; col < columns; col++) {
     if (b < &bfunc[nbfunc]) {
  w = strlen(b->bname);
  xprintf("%s", b->bname);
  if (col < (columns - 1))
      for (; w < maxwidth; w++)
   xputchar(' ');
  ++b;
     }
 }
 if (row < (rows - 1)) {
     if (Tty_raw_mode)
  xputchar('\r');
     xputchar('\n');
 }
    }



    if (Tty_raw_mode)
 xputchar('\r');
    xputchar('\n');


    cleanup_until(&lbuffed);
    flush();
}
