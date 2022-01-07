
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_regcache ;
 int sparc64_collect_gregset (int *,int ,int,void*) ;
 int sparc64fbsd_gregset ;

void
fill_gregset (void *gregs, int regnum)
{
  sparc64_collect_gregset (&sparc64fbsd_gregset, current_regcache, regnum,
      gregs);
}
