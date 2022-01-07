
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int dummy; } ;
struct uni_msghdr {int dummy; } ;


 int uni_print_init (char*,size_t,struct unicx*) ;
 int uni_print_msghdr_internal (struct uni_msghdr const*,struct unicx*) ;

void
uni_print_msghdr(char *str, size_t len, const struct uni_msghdr *hdr,
    struct unicx *cx)
{
 uni_print_init(str, len, cx);
 uni_print_msghdr_internal(hdr, cx);
}
