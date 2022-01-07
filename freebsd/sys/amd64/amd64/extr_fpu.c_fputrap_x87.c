
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_3__ {int en_cw; int en_sw; } ;
struct savefpu {TYPE_1__ sv_env; } ;
struct TYPE_4__ {struct savefpu* pcb_save; } ;


 scalar_t__ PCPU_GET (int ) ;
 int critical_enter () ;
 int critical_exit () ;
 TYPE_2__* curpcb ;
 scalar_t__ curthread ;
 int fnstcw (int*) ;
 int fnstsw (int*) ;
 int fpcurthread ;
 int* fpetable ;

int
fputrap_x87(void)
{
 struct savefpu *pcb_save;
 u_short control, status;

 critical_enter();






 if (PCPU_GET(fpcurthread) != curthread) {
  pcb_save = curpcb->pcb_save;
  control = pcb_save->sv_env.en_cw;
  status = pcb_save->sv_env.en_sw;
 } else {
  fnstcw(&control);
  fnstsw(&status);
 }

 critical_exit();
 return (fpetable[status & ((~control & 0x3f) | 0x40)]);
}
