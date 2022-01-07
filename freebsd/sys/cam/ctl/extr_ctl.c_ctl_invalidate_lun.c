
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_lun {int flags; int lun_lock; int ooa_queue; } ;
struct ctl_be_lun {scalar_t__ ctl_lun; } ;


 int CTL_LUN_DISABLED ;
 int CTL_LUN_INVALID ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int ctl_free_lun (struct ctl_lun*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
ctl_invalidate_lun(struct ctl_be_lun *be_lun)
{
 struct ctl_lun *lun;

 lun = (struct ctl_lun *)be_lun->ctl_lun;

 mtx_lock(&lun->lun_lock);




 if ((lun->flags & CTL_LUN_DISABLED) == 0) {
  mtx_unlock(&lun->lun_lock);
  return (-1);
 }



 lun->flags |= CTL_LUN_INVALID;






 if (TAILQ_EMPTY(&lun->ooa_queue)) {
  mtx_unlock(&lun->lun_lock);
  ctl_free_lun(lun);
 } else
  mtx_unlock(&lun->lun_lock);

 return (0);
}
