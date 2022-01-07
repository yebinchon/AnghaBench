
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct dbreg32 {scalar_t__* dr; } ;
struct dbreg {scalar_t__* dr; } ;


 int set_dbregs (struct thread*,struct dbreg*) ;

int
set_dbregs32(struct thread *td, struct dbreg32 *regs)
{
 struct dbreg dr;
 int i;

 for (i = 0; i < 8; i++)
  dr.dr[i] = regs->dr[i];
 for (i = 8; i < 16; i++)
  dr.dr[i] = 0;
 return (set_dbregs(td, &dr));
}
