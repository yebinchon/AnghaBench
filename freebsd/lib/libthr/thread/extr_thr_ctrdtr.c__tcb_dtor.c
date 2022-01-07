
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcb {int dummy; } ;


 int _rtld_free_tls (struct tcb*,int,int) ;

void
_tcb_dtor(struct tcb *tcb)
{

 _rtld_free_tls(tcb, sizeof(struct tcb), 16);
}
