
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int dummy; } ;


 int doprefix (struct unicx*,char const*) ;

void
uni_print_flag(const char *s, struct unicx *cx)
{
 doprefix(cx, s);
}
