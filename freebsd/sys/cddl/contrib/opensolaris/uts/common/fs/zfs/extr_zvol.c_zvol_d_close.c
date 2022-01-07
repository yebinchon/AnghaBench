
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zv_flags; int zv_total_opens; int zv_sync_cnt; } ;
typedef TYPE_1__ zvol_state_t ;
struct thread {int dummy; } ;
struct cdev {TYPE_1__* si_drv2; } ;


 int ASSERT (int) ;
 int FDSYNC ;
 int FSYNC ;
 int ZVOL_EXCL ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfsdev_state_lock ;
 int zvol_last_close (TYPE_1__*) ;

__attribute__((used)) static int
zvol_d_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 zvol_state_t *zv = dev->si_drv2;

 mutex_enter(&zfsdev_state_lock);
 if (zv->zv_flags & ZVOL_EXCL) {
  ASSERT(zv->zv_total_opens == 1);
  zv->zv_flags &= ~ZVOL_EXCL;
 }





 ASSERT(zv->zv_total_opens != 0);




 zv->zv_total_opens--;
 if (flags & (FSYNC | FDSYNC))
  zv->zv_sync_cnt--;

 if (zv->zv_total_opens == 0)
  zvol_last_close(zv);

 mutex_exit(&zfsdev_state_lock);
 return (0);
}
