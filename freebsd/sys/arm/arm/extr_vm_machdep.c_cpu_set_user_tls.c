
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* md_tp; } ;
struct thread {TYPE_3__ td_md; TYPE_2__* td_pcb; } ;
typedef void* register_t ;
struct TYPE_4__ {void* sf_tpidrurw; } ;
struct TYPE_5__ {TYPE_1__ pcb_regs; } ;


 scalar_t__ ARM_TP_ADDRESS ;
 int critical_enter () ;
 int critical_exit () ;
 struct thread* curthread ;
 int set_tls (void*) ;

int
cpu_set_user_tls(struct thread *td, void *tls_base)
{






 td->td_md.md_tp = (register_t)tls_base;
 if (td == curthread) {
  critical_enter();
  *(register_t *)ARM_TP_ADDRESS = (register_t)tls_base;
  critical_exit();
 }

 return (0);
}
