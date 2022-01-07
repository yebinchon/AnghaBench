
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {size_t col; scalar_t__ noindent; int indent; int flags; } ;


 int HTML_NOSPACE ;
 int putchar (char) ;

__attribute__((used)) static void
print_indent(struct html *h)
{
 size_t i;

 if (h->col)
  return;

 if (h->noindent == 0) {
  h->col = h->indent * 2;
  for (i = 0; i < h->col; i++)
   putchar(' ');
 }
 h->flags &= ~HTML_NOSPACE;
}
