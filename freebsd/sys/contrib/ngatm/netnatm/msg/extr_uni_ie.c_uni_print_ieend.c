
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int indent; } ;


 int uni_print_eol (struct unicx*) ;
 int uni_print_pop_prefix (struct unicx*) ;

__attribute__((used)) static void
uni_print_ieend(struct unicx *cx)
{
 uni_print_pop_prefix(cx);
 uni_print_eol(cx);
 cx->indent--;
}
