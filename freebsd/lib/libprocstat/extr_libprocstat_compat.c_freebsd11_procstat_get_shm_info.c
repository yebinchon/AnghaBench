
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shmstat {int mode; int size; } ;
struct procstat {int dummy; } ;
struct freebsd11_shmstat {int mode; int size; } ;
struct filestat {int dummy; } ;


 int procstat_get_shm_info (struct procstat*,struct filestat*,struct shmstat*,char*) ;

int
freebsd11_procstat_get_shm_info(struct procstat *procstat,
    struct filestat *fst, struct freebsd11_shmstat *shm_compat, char *errbuf)
{
 struct shmstat shm;
 int r;

 r = procstat_get_shm_info(procstat, fst, &shm, errbuf);
 if (r != 0)
  return (r);
 shm_compat->size = shm.size;
 shm_compat->mode = shm.mode;
 return (0);
}
