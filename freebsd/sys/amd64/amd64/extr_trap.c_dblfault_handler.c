
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trapframe {int tf_gs; int tf_fs; int tf_es; int tf_ds; int tf_ss; int tf_cs; int tf_rflags; int tf_r15; int tf_r14; int tf_r13; int tf_r12; int tf_r11; int tf_r10; int tf_r9; int tf_r8; int tf_rsi; int tf_rdi; int tf_rcx; int tf_rbx; int tf_rdx; int tf_rax; int tf_rbp; int tf_rsp; int tf_rip; } ;


 int MSR_FSBASE ;
 int MSR_GSBASE ;
 int MSR_KGSBASE ;
 int PCPU_GET (int ) ;
 int apic_id ;
 int cpuid ;
 int dtrace_doubletrap_func () ;
 int panic (char*) ;
 int printf (char*,int,...) ;
 int rdmsr (int ) ;
 int stub1 () ;

void
dblfault_handler(struct trapframe *frame)
{




 printf("\nFatal double fault\n"
     "rip %#lx rsp %#lx rbp %#lx\n"
     "rax %#lx rdx %#lx rbx %#lx\n"
     "rcx %#lx rsi %#lx rdi %#lx\n"
     "r8 %#lx r9 %#lx r10 %#lx\n"
     "r11 %#lx r12 %#lx r13 %#lx\n"
     "r14 %#lx r15 %#lx rflags %#lx\n"
     "cs %#lx ss %#lx ds %#hx es %#hx fs %#hx gs %#hx\n"
     "fsbase %#lx gsbase %#lx kgsbase %#lx\n",
     frame->tf_rip, frame->tf_rsp, frame->tf_rbp,
     frame->tf_rax, frame->tf_rdx, frame->tf_rbx,
     frame->tf_rcx, frame->tf_rdi, frame->tf_rsi,
     frame->tf_r8, frame->tf_r9, frame->tf_r10,
     frame->tf_r11, frame->tf_r12, frame->tf_r13,
     frame->tf_r14, frame->tf_r15, frame->tf_rflags,
     frame->tf_cs, frame->tf_ss, frame->tf_ds, frame->tf_es,
     frame->tf_fs, frame->tf_gs,
     rdmsr(MSR_FSBASE), rdmsr(MSR_GSBASE), rdmsr(MSR_KGSBASE));





 panic("double fault");
}
