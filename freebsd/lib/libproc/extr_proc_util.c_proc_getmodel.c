
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_handle {int model; } ;



int
proc_getmodel(struct proc_handle *phdl)
{

 if (phdl == ((void*)0))
  return (-1);

 return (phdl->model);
}
