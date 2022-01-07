
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int dummy; } ;
struct kinfo_proc {int dummy; } ;


 char** getargv (struct procstat*,struct kinfo_proc*,size_t,int ) ;

char **
procstat_getargv(struct procstat *procstat, struct kinfo_proc *p, size_t nchr)
{

 return (getargv(procstat, p, nchr, 0));
}
