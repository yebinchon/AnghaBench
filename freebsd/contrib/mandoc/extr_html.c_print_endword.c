
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int flags; scalar_t__ bufcol; scalar_t__ col; int buf; scalar_t__ noindent; } ;


 int HTML_BUFFER ;
 int fwrite (int ,scalar_t__,int,int ) ;
 int print_byte (struct html*,char) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
print_endword(struct html *h)
{
 if (h->noindent) {
  print_byte(h, ' ');
  return;
 }

 if ((h->flags & HTML_BUFFER) == 0) {
  h->col++;
  h->flags |= HTML_BUFFER;
 } else if (h->bufcol) {
  putchar(' ');
  fwrite(h->buf, h->bufcol, 1, stdout);
  h->col += h->bufcol + 1;
 }
 h->bufcol = 0;
}
