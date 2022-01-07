
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong_t ;
typedef int uint_t ;
struct trapframe {int tf_ss; int tf_esp; int tf_eflags; int tf_cs; int tf_eip; int tf_err; int tf_trapno; int tf_eax; int tf_ecx; int tf_ebx; int tf_isp; int tf_ebp; int tf_esi; int tf_edi; int tf_ds; int tf_es; int tf_fs; } ;
struct pcb {int pcb_gs; } ;
typedef int regmap ;
struct TYPE_2__ {struct pcb* td_pcb; } ;


 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int REG_RDX ;






 int SS ;
 TYPE_1__* curthread ;

ulong_t
dtrace_getreg(struct trapframe *rp, uint_t reg)
{
 struct pcb *pcb;
 int regmap[] = {
  139,
  140,
  141,
  143,
  134,
  131,
  137,
  130,
  136,
  REG_RDX,
  135,
  138,
  128,
  142,
  132,
  144,
  133,
  130,
  129
 };

 if (reg > SS) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 if (reg >= sizeof (regmap) / sizeof (int)) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 reg = regmap[reg];

 switch(reg) {
 case 139:
  if ((pcb = curthread->td_pcb) == ((void*)0)) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
   return (0);
  }
  return (pcb->pcb_gs);
 case 140:
  return (rp->tf_fs);
 case 141:
  return (rp->tf_es);
 case 143:
  return (rp->tf_ds);
 case 134:
  return (rp->tf_edi);
 case 131:
  return (rp->tf_esi);
 case 137:
  return (rp->tf_ebp);
 case 130:
  return (rp->tf_isp);
 case 136:
  return (rp->tf_ebx);
 case 135:
  return (rp->tf_ecx);
 case 138:
  return (rp->tf_eax);
 case 128:
  return (rp->tf_trapno);
 case 142:
  return (rp->tf_err);
 case 132:
  return (rp->tf_eip);
 case 144:
  return (rp->tf_cs);
 case 133:
  return (rp->tf_eflags);




 case 129:
  return (rp->tf_ss);
 default:
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }
}
