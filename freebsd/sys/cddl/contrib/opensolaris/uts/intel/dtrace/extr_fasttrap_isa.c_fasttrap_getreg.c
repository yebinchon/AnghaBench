
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong_t ;
typedef int uint_t ;
struct reg {int r_gs; int r_es; int r_ds; int r_fs; int r_ss; int r_rsp; int r_rflags; int r_cs; int r_rip; int r_err; int r_trapno; int r_rax; int r_rcx; int r_rdx; int r_rbx; int r_rbp; int r_rsi; int r_rdi; int r_r8; int r_r9; int r_r10; int r_r11; int r_r12; int r_r13; int r_r14; int r_r15; } ;
typedef int greg_t ;


 int MSR_FSBASE ;
 int MSR_GSBASE ;
 int _NGREG ;
 int panic (char*) ;
 int rdmsr (int ) ;

__attribute__((used)) static ulong_t
fasttrap_getreg(struct reg *rp, uint_t reg)
{

 switch (reg) {
 case 142: return (rp->r_r15);
 case 143: return (rp->r_r14);
 case 144: return (rp->r_r13);
 case 145: return (rp->r_r12);
 case 146: return (rp->r_r11);
 case 147: return (rp->r_r10);
 case 140: return (rp->r_r9);
 case 141: return (rp->r_r8);
 case 135: return (rp->r_rdi);
 case 131: return (rp->r_rsi);
 case 138: return (rp->r_rbp);
 case 137: return (rp->r_rbx);
 case 134: return (rp->r_rdx);
 case 136: return (rp->r_rcx);
 case 139: return (rp->r_rax);
 case 128: return (rp->r_trapno);
 case 153: return (rp->r_err);
 case 132: return (rp->r_rip);
 case 155: return (rp->r_cs);
 case 133: return (rp->r_rflags);
 case 130: return (rp->r_rsp);
 case 129: return (rp->r_ss);
 case 151: return (rp->r_fs);
 case 149: return (rp->r_gs);
 case 154: return (rp->r_ds);
 case 152: return (rp->r_es);
 case 150: return (rdmsr(MSR_FSBASE));
 case 148: return (rdmsr(MSR_GSBASE));
 }

 panic("dtrace: illegal register constant");
}
