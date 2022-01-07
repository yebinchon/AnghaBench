
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int flags; } ;


 int EINVAL ;

int
proc_clearflags(struct proc_handle *phdl, int mask)
{

 if (phdl == ((void*)0))
  return (EINVAL);

 phdl->flags &= ~mask;

 return (0);
}
