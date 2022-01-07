
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ md_tp; } ;
struct thread {TYPE_1__ td_md; } ;
typedef scalar_t__ register_t ;


 scalar_t__ ARM_TP_ADDRESS ;
 int set_tls (void*) ;

__attribute__((used)) static int
arm32_set_tp(struct thread *td, void *args)
{




 td->td_md.md_tp = (register_t)args;
 *(register_t *)ARM_TP_ADDRESS = (register_t)args;

 return (0);
}
