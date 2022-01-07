
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct fpreg {int dummy; } ;


 int bzero (struct fpreg*,int) ;

int
fill_fpregs(struct thread *td, struct fpreg *regs)
{
 bzero(regs, sizeof(*regs));
 return (0);
}
