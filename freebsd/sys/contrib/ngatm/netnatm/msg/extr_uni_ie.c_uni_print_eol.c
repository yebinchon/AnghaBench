
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int doindent; scalar_t__ multiline; } ;


 int uni_putc (char,struct unicx*) ;

void
uni_print_eol(struct unicx *cx)
{
 if (cx->multiline) {
  if (!cx->doindent) {
   uni_putc('\n', cx);
   cx->doindent = 1;
  }
 }
}
