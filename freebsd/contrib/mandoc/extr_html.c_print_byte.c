
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int flags; int col; int bufcol; char* buf; int indent; } ;


 int HTML_BUFFER ;
 int fwrite (char*,int,int,int ) ;
 int print_indent (struct html*) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
print_byte(struct html *h, char c)
{
 if ((h->flags & HTML_BUFFER) == 0) {
  putchar(c);
  h->col++;
  return;
 }

 if (h->col + h->bufcol < sizeof(h->buf)) {
  h->buf[h->bufcol++] = c;
  return;
 }

 putchar('\n');
 h->col = 0;
 print_indent(h);
 putchar(' ');
 putchar(' ');
 fwrite(h->buf, h->bufcol, 1, stdout);
 putchar(c);
 h->col = (h->indent + 1) * 2 + h->bufcol + 1;
 h->bufcol = 0;
 h->flags &= ~HTML_BUFFER;
}
