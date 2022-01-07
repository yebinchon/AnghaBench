
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int r_ss; int r_rsp; int r_rflags; int r_cs; int r_rip; int r_rax; int r_rdi; int r_rsi; int r_rdx; int r_rcx; int r_r8; int r_r9; int r_r10; int r_r11; int r_rbx; int r_rbp; int r_r12; int r_r13; int r_r14; int r_r15; } ;
struct linux_pt_reg {int ss; int rsp; int eflags; int cs; int rip; int orig_rax; int rdi; int rsi; int rdx; int rcx; int rax; int r8; int r9; int r10; int r11; int rbx; int rbp; int r12; int r13; int r14; int r15; } ;



__attribute__((used)) static void
map_regs_to_linux(struct reg *b_reg, struct linux_pt_reg *l_reg)
{

 l_reg->r15 = b_reg->r_r15;
 l_reg->r14 = b_reg->r_r14;
 l_reg->r13 = b_reg->r_r13;
 l_reg->r12 = b_reg->r_r12;
 l_reg->rbp = b_reg->r_rbp;
 l_reg->rbx = b_reg->r_rbx;
 l_reg->r11 = b_reg->r_r11;
 l_reg->r10 = b_reg->r_r10;
 l_reg->r9 = b_reg->r_r9;
 l_reg->r8 = b_reg->r_r8;
 l_reg->rax = b_reg->r_rax;
 l_reg->rcx = b_reg->r_rcx;
 l_reg->rdx = b_reg->r_rdx;
 l_reg->rsi = b_reg->r_rsi;
 l_reg->rdi = b_reg->r_rdi;
 l_reg->orig_rax = b_reg->r_rax;
 l_reg->rip = b_reg->r_rip;
 l_reg->cs = b_reg->r_cs;
 l_reg->eflags = b_reg->r_rflags;
 l_reg->rsp = b_reg->r_rsp;
 l_reg->ss = b_reg->r_ss;
}
