
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct dbreg32 {int * dr; } ;
struct dbreg {int * dr; } ;


 int fill_dbregs (struct thread*,struct dbreg*) ;

int
fill_dbregs32(struct thread *td, struct dbreg32 *regs)
{
 struct dbreg dr;
 int err, i;

 err = fill_dbregs(td, &dr);
 for (i = 0; i < 8; i++)
  regs->dr[i] = dr.dr[i];
 return (err);
}
