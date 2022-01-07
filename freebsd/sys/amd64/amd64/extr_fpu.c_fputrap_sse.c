
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {TYPE_2__* pcb_save; } ;
struct TYPE_4__ {int en_mxcsr; } ;
struct TYPE_5__ {TYPE_1__ sv_env; } ;


 scalar_t__ PCPU_GET (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_3__* curpcb ;
 scalar_t__ curthread ;
 int fpcurthread ;
 int* fpetable ;
 int stmxcsr (int*) ;

int
fputrap_sse(void)
{
 u_int mxcsr;

 critical_enter();
 if (PCPU_GET(fpcurthread) != curthread)
  mxcsr = curpcb->pcb_save->sv_env.en_mxcsr;
 else
  stmxcsr(&mxcsr);
 critical_exit();
 return (fpetable[(mxcsr & (~mxcsr >> 7)) & 0x3f]);
}
