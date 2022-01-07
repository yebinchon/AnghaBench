
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct envxmm {int en_tw; int en_rdp; int en_opcode; int en_rip; int en_sw; int en_cw; } ;
struct savefpu {TYPE_1__* sv_fp; struct envxmm sv_env; } ;
struct env87 {int en_tw; int en_foo; int en_opcode; int en_fip; int en_sw; int en_cw; } ;
struct save87 {int * sv_ac; struct env87 sv_env; } ;
struct fpreg32 {int dummy; } ;
struct TYPE_2__ {int fp_acc; } ;


 int bzero (int *,int) ;
 int fpuuserinited (struct thread*) ;
 struct savefpu* get_pcb_user_save_td (struct thread*) ;

int
set_fpregs32(struct thread *td, struct fpreg32 *regs)
{
 struct save87 *sv_87 = (struct save87 *)regs;
 struct env87 *penv_87 = &sv_87->sv_env;
 struct savefpu *sv_fpu = get_pcb_user_save_td(td);
 struct envxmm *penv_xmm = &sv_fpu->sv_env;
 int i;


 penv_xmm->en_cw = penv_87->en_cw;
 penv_xmm->en_sw = penv_87->en_sw;
 penv_xmm->en_rip = penv_87->en_fip;

 penv_xmm->en_opcode = penv_87->en_opcode;
 penv_xmm->en_rdp = penv_87->en_foo;


 penv_xmm->en_tw = 0;
 for (i = 0; i < 8; ++i) {
  sv_fpu->sv_fp[i].fp_acc = sv_87->sv_ac[i];
  if ((penv_87->en_tw & (3 << i * 2)) != (3 << i * 2))
   penv_xmm->en_tw |= 1 << i;
 }

 for (i = 8; i < 16; ++i)
  bzero(&sv_fpu->sv_fp[i].fp_acc, sizeof(sv_fpu->sv_fp[i].fp_acc));
 fpuuserinited(td);

 return (0);
}
