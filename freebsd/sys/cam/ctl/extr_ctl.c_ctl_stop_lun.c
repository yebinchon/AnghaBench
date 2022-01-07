
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_lun {int lun_lock; int flags; } ;
struct ctl_be_lun {scalar_t__ ctl_lun; } ;


 int CTL_LUN_STOPPED ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
ctl_stop_lun(struct ctl_be_lun *be_lun)
{
 struct ctl_lun *lun = (struct ctl_lun *)be_lun->ctl_lun;

 mtx_lock(&lun->lun_lock);
 lun->flags |= CTL_LUN_STOPPED;
 mtx_unlock(&lun->lun_lock);
 return (0);
}
