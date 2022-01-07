
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct linux_pemuldata* p_emuldata; } ;
struct linux_pemuldata {int dummy; } ;



struct linux_pemuldata *
pem_find(struct proc *p)
{
 struct linux_pemuldata *pem;

 pem = p->p_emuldata;

 return (pem);
}
