
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union uni_msgall {int dummy; } uni_msgall ;
typedef int u_int ;
struct unicx {int dummy; } ;


 int uni_print_init (char*,size_t,struct unicx*) ;
 int uni_print_msg_internal (int ,union uni_msgall const*,struct unicx*) ;

void
uni_print_msg(char *buf, size_t size, u_int mtype, const union uni_msgall *all,
    struct unicx *cx)
{
 uni_print_init(buf, size, cx);
 uni_print_msg_internal(mtype, all, cx);
}
