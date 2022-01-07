
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {scalar_t__ col; int flags; scalar_t__ bufcol; int buf; } ;


 int HTML_BUFFER ;
 int HTML_NOSPACE ;
 int fwrite (int ,scalar_t__,int,int ) ;
 int putchar (char) ;
 int stdout ;

void
print_endline(struct html *h)
{
 if (h->col == 0)
  return;

 if (h->bufcol) {
  putchar(' ');
  fwrite(h->buf, h->bufcol, 1, stdout);
  h->bufcol = 0;
 }
 putchar('\n');
 h->col = 0;
 h->flags |= HTML_NOSPACE;
 h->flags &= ~HTML_BUFFER;
}
