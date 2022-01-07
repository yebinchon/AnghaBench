
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_regcache ;
 int sparc64_collect_fpregset (int ,int,void*) ;

void
fill_fpregset (void *fpregs, int regnum)
{
  sparc64_collect_fpregset (current_regcache, regnum, fpregs);
}
