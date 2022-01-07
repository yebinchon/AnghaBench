
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mc_ss; int mc_rsp; int mc_rflags; int mc_cs; int mc_rip; int mc_r15; int mc_r14; int mc_r13; int mc_r12; int mc_r11; int mc_r10; int mc_rbp; int mc_rbx; int mc_rax; int mc_r9; int mc_r8; int mc_rcx; int mc_rdx; int mc_rsi; int mc_rdi; } ;
struct TYPE_4__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
struct reg {int r_ss; int r_rsp; int r_rflags; int r_cs; int r_rip; int r_r15; int r_r14; int r_r13; int r_r12; int r_r11; int r_r10; int r_rbp; int r_rbx; int r_rax; int r_r9; int r_r8; int r_rcx; int r_rdx; int r_rsi; int r_rdi; } ;
typedef TYPE_2__ mcontext_t ;



void
pt_ucontext_to_reg(const ucontext_t *uc, struct reg *r)
{
 const mcontext_t *mc = &uc->uc_mcontext;

 r->r_rdi = mc->mc_rdi;
 r->r_rsi = mc->mc_rsi;
 r->r_rdx = mc->mc_rdx;
 r->r_rcx = mc->mc_rcx;
 r->r_r8 = mc->mc_r8;
 r->r_r9 = mc->mc_r9;
 r->r_rax = mc->mc_rax;
 r->r_rbx = mc->mc_rbx;
 r->r_rbp = mc->mc_rbp;
 r->r_r10 = mc->mc_r10;
 r->r_r11 = mc->mc_r11;
 r->r_r12 = mc->mc_r12;
 r->r_r13 = mc->mc_r13;
 r->r_r14 = mc->mc_r14;
 r->r_r15 = mc->mc_r15;
 r->r_rip = mc->mc_rip;
 r->r_cs = mc->mc_cs;
 r->r_rflags = mc->mc_rflags;
 r->r_rsp = mc->mc_rsp;
 r->r_ss = mc->mc_ss;
}
