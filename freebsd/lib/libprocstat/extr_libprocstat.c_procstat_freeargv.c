
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int * argv; } ;


 int argvec_free (int *) ;

void
procstat_freeargv(struct procstat *procstat)
{

 if (procstat->argv != ((void*)0)) {
  argvec_free(procstat->argv);
  procstat->argv = ((void*)0);
 }
}
