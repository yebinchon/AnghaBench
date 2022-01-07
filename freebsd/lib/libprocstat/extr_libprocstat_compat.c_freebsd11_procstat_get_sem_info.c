
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semstat {int mode; int value; } ;
struct procstat {int dummy; } ;
struct freebsd11_semstat {int mode; int value; } ;
struct filestat {int dummy; } ;


 int procstat_get_sem_info (struct procstat*,struct filestat*,struct semstat*,char*) ;

int
freebsd11_procstat_get_sem_info(struct procstat *procstat,
    struct filestat *fst, struct freebsd11_semstat *sem_compat, char *errbuf)
{
 struct semstat sem;
 int r;

 r = procstat_get_sem_info(procstat, fst, &sem, errbuf);
 if (r != 0)
  return (r);
 sem_compat->value = sem.value;
 sem_compat->mode = sem.mode;
 return (0);
}
