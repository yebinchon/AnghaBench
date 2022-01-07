
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_lun {int lun_lock; int flags; } ;
struct ctl_be_lun {scalar_t__ ctl_lun; } ;


 int CTL_LUN_PRIMARY_SC ;
 int CTL_UA_ASYM_ACC_CHANGE ;
 int ctl_est_ua_all (struct ctl_lun*,int,int ) ;
 int ctl_isc_announce_lun (struct ctl_lun*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
ctl_lun_secondary(struct ctl_be_lun *be_lun)
{
 struct ctl_lun *lun = (struct ctl_lun *)be_lun->ctl_lun;

 mtx_lock(&lun->lun_lock);
 lun->flags &= ~CTL_LUN_PRIMARY_SC;
 ctl_est_ua_all(lun, -1, CTL_UA_ASYM_ACC_CHANGE);
 mtx_unlock(&lun->lun_lock);
 ctl_isc_announce_lun(lun);
 return (0);
}
