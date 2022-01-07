
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int r_gs; int r_fs; int r_es; int r_ds; int r_ss; int r_rsp; int r_rflags; int r_cs; int r_rip; int r_rax; int r_rdi; int r_rsi; int r_rdx; int r_rcx; int r_r8; int r_r9; int r_r10; int r_r11; int r_rbx; int r_rbp; int r_r12; int r_r13; int r_r14; int r_r15; } ;
struct linux_pt_regset {unsigned long fs_base; unsigned long gs_base; int gs; int fs; int es; int ds; int ss; int rsp; int eflags; int cs; int rip; int orig_rax; int rdi; int rsi; int rdx; int rcx; int rax; int r8; int r9; int r10; int r11; int rbx; int rbp; int r12; int r13; int r14; int r15; } ;



__attribute__((used)) static void
map_regs_to_linux_regset(struct reg *b_reg, unsigned long fs_base,
    unsigned long gs_base, struct linux_pt_regset *l_regset)
{

 l_regset->r15 = b_reg->r_r15;
 l_regset->r14 = b_reg->r_r14;
 l_regset->r13 = b_reg->r_r13;
 l_regset->r12 = b_reg->r_r12;
 l_regset->rbp = b_reg->r_rbp;
 l_regset->rbx = b_reg->r_rbx;
 l_regset->r11 = b_reg->r_r11;
 l_regset->r10 = b_reg->r_r10;
 l_regset->r9 = b_reg->r_r9;
 l_regset->r8 = b_reg->r_r8;
 l_regset->rax = b_reg->r_rax;
 l_regset->rcx = b_reg->r_rcx;
 l_regset->rdx = b_reg->r_rdx;
 l_regset->rsi = b_reg->r_rsi;
 l_regset->rdi = b_reg->r_rdi;
 l_regset->orig_rax = b_reg->r_rax;
 l_regset->rip = b_reg->r_rip;
 l_regset->cs = b_reg->r_cs;
 l_regset->eflags = b_reg->r_rflags;
 l_regset->rsp = b_reg->r_rsp;
 l_regset->ss = b_reg->r_ss;
 l_regset->fs_base = fs_base;
 l_regset->gs_base = gs_base;
 l_regset->ds = b_reg->r_ds;
 l_regset->es = b_reg->r_es;
 l_regset->fs = b_reg->r_fs;
 l_regset->gs = b_reg->r_gs;
}
