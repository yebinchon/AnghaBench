
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int dummy; } ;
struct uni_cref {int dummy; } ;


 int uni_print_cref_internal (struct uni_cref const*,struct unicx*) ;
 int uni_print_init (char*,size_t,struct unicx*) ;

void
uni_print_cref(char *str, size_t len, const struct uni_cref *cref,
    struct unicx *cx)
{
 uni_print_init(str, len, cx);
 uni_print_cref_internal(cref, cx);
}
