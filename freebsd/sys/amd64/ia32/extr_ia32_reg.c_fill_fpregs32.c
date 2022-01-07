
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {TYPE_1__* td_frame; } ;
struct envxmm {int en_tw; int en_rdp; int en_opcode; int en_rip; int en_sw; int en_cw; } ;
struct savefpu {TYPE_2__* sv_fp; struct envxmm sv_env; } ;
struct env87 {int en_tw; int en_fos; int en_foo; int en_opcode; int en_fcs; int en_fip; int en_sw; int en_cw; } ;
struct save87 {int * sv_ac; struct env87 sv_env; } ;
struct fpreg32 {int dummy; } ;
struct TYPE_4__ {int fp_acc; } ;
struct TYPE_3__ {int tf_ds; int tf_cs; } ;


 int bzero (struct fpreg32*,int) ;
 int fpugetregs (struct thread*) ;
 struct savefpu* get_pcb_user_save_td (struct thread*) ;

int
fill_fpregs32(struct thread *td, struct fpreg32 *regs)
{
 struct savefpu *sv_fpu;
 struct save87 *sv_87;
 struct env87 *penv_87;
 struct envxmm *penv_xmm;
 int i;

 bzero(regs, sizeof(*regs));
 sv_87 = (struct save87 *)regs;
 penv_87 = &sv_87->sv_env;
 fpugetregs(td);
 sv_fpu = get_pcb_user_save_td(td);
 penv_xmm = &sv_fpu->sv_env;


 penv_87->en_cw = penv_xmm->en_cw;
 penv_87->en_sw = penv_xmm->en_sw;







 penv_87->en_fip = penv_xmm->en_rip;
 penv_87->en_fcs = td->td_frame->tf_cs;
 penv_87->en_opcode = penv_xmm->en_opcode;
 penv_87->en_foo = penv_xmm->en_rdp;

 penv_87->en_fos = td->td_frame->tf_ds;


 penv_87->en_tw = 0xffff;
 for (i = 0; i < 8; ++i) {
  sv_87->sv_ac[i] = sv_fpu->sv_fp[i].fp_acc;
  if ((penv_xmm->en_tw & (1 << i)) != 0)
   penv_87->en_tw &= ~(3 << i * 2);
 }

 return (0);
}
