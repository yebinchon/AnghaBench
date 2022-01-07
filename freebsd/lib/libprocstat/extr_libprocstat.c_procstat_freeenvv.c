
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int * envv; } ;


 int argvec_free (int *) ;

void
procstat_freeenvv(struct procstat *procstat)
{
 if (procstat->envv != ((void*)0)) {
  argvec_free(procstat->envv);
  procstat->envv = ((void*)0);
 }
}
