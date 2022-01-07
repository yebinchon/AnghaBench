
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct trapframe {int dummy; } ;


 int FAULT_EA_IMPREC ;
 int abort_fatal (struct trapframe*,int ,int ,int ,int ,int ,int *) ;
 int curthread ;
 int userret (int ,struct trapframe*) ;

__attribute__((used)) static __inline void
abort_imprecise(struct trapframe *tf, u_int fsr, u_int prefetch, bool usermode)
{
 abort_fatal(tf, FAULT_EA_IMPREC, fsr, 0, prefetch, curthread, ((void*)0));
}
