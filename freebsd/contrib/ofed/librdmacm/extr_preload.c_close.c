
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd_info {int dupfd; scalar_t__ type; int fd; int refcnt; } ;
struct TYPE_2__ {int (* close ) (int) ;} ;


 int atomic_fetch_sub (int *,int) ;
 scalar_t__ fd_rsocket ;
 int free (struct fd_info*) ;
 int idm ;
 int idm_clear (int *,int) ;
 struct fd_info* idm_lookup (int *,int) ;
 int init_preload () ;
 int rclose (int) ;
 TYPE_1__ real ;
 int stub1 (int) ;
 int stub2 (int) ;
 int stub3 (int) ;

int close(int socket)
{
 struct fd_info *fdi;
 int ret;

 init_preload();
 fdi = idm_lookup(&idm, socket);
 if (!fdi)
  return real.close(socket);

 if (fdi->dupfd != -1) {
  ret = close(fdi->dupfd);
  if (ret)
   return ret;
 }

 if (atomic_fetch_sub(&fdi->refcnt, 1) != 1)
  return 0;

 idm_clear(&idm, socket);
 real.close(socket);
 ret = (fdi->type == fd_rsocket) ? rclose(fdi->fd) : real.close(fdi->fd);
 free(fdi);
 return ret;
}
