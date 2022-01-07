
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int dummy; } ;
struct uni_all {int dummy; } ;


 int uni_print_init (char*,size_t,struct unicx*) ;
 int uni_print_internal (struct uni_all const*,struct unicx*) ;

void
uni_print(char *buf, size_t size, const struct uni_all *all, struct unicx *cx)
{
 uni_print_init(buf, size, cx);
 uni_print_internal(all, cx);
}
