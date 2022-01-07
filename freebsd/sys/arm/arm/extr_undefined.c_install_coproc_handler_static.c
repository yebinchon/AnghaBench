
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undefined_handler {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct undefined_handler*,int ) ;
 int uh_link ;
 int * undefined_handlers ;

void
install_coproc_handler_static(int coproc, struct undefined_handler *uh)
{

 LIST_INSERT_HEAD(&undefined_handlers[coproc], uh, uh_link);
}
