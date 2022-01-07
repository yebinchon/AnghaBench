
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd_info {int dupfd; int refcnt; } ;
struct TYPE_2__ {int (* close ) (int) ;} ;


 int ENOMEM ;
 int ERR (int ) ;
 int O_RDONLY ;
 int atomic_store (int *,int) ;
 struct fd_info* calloc (int,int) ;
 int free (struct fd_info*) ;
 int idm ;
 int idm_set (int *,int,struct fd_info*) ;
 int mut ;
 int open (char*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_1__ real ;
 int stub1 (int) ;

__attribute__((used)) static int fd_open(void)
{
 struct fd_info *fdi;
 int ret, index;

 fdi = calloc(1, sizeof(*fdi));
 if (!fdi)
  return ERR(ENOMEM);

 index = open("/dev/null", O_RDONLY);
 if (index < 0) {
  ret = index;
  goto err1;
 }

 fdi->dupfd = -1;
 atomic_store(&fdi->refcnt, 1);
 pthread_mutex_lock(&mut);
 ret = idm_set(&idm, index, fdi);
 pthread_mutex_unlock(&mut);
 if (ret < 0)
  goto err2;

 return index;

err2:
 real.close(index);
err1:
 free(fdi);
 return ret;
}
