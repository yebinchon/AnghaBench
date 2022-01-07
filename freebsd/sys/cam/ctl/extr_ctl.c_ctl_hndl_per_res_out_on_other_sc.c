
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pr_msg; } ;
union ctl_io {TYPE_1__ presio; } ;
struct TYPE_9__ {int action; int residx; int res_type; int sa_res_key; } ;
struct TYPE_10__ {TYPE_3__ pr_info; } ;
struct TYPE_12__ {size_t targ_mapped_lun; } ;
struct TYPE_8__ {TYPE_6__ nexus; } ;
union ctl_ha_msg {TYPE_4__ pr; TYPE_2__ hdr; } ;
typedef size_t uint32_t ;
struct ctl_softc {int init_min; int init_max; int ctl_lock; struct ctl_lun** ctl_luns; } ;
struct TYPE_11__ {int queue_flags; } ;
struct ctl_lun {int flags; int pr_res_idx; int lun_lock; int pr_generation; int pr_key_count; int pr_res_type; TYPE_5__ MODE_CTRL; } ;


 int CTL_LUN_DISABLED ;
 int CTL_LUN_PR_RESERVED ;
 int CTL_MAX_INITIATORS ;
 int CTL_PR_ALL_REGISTRANTS ;

 void* CTL_PR_NO_RESERVATION ;





 struct ctl_softc* CTL_SOFTC (union ctl_io*) ;
 int CTL_UA_REG_PREEMPT ;
 int CTL_UA_RES_RELEASE ;
 int SCP_NUAR ;
 int SPR_TYPE_EX_AC ;
 int SPR_TYPE_EX_AC_RO ;
 int SPR_TYPE_WR_EX ;
 int SPR_TYPE_WR_EX_RO ;
 int ctl_alloc_prkey (struct ctl_lun*,int) ;
 int ctl_clr_prkey (struct ctl_lun*,int) ;
 int ctl_est_ua (struct ctl_lun*,int,int ) ;
 size_t ctl_get_initindex (TYPE_6__*) ;
 int ctl_get_prkey (struct ctl_lun*,int) ;
 size_t ctl_max_luns ;
 int ctl_pro_preempt_other (struct ctl_lun*,union ctl_ha_msg*) ;
 int ctl_set_prkey (struct ctl_lun*,int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_8btou64 (int ) ;

__attribute__((used)) static void
ctl_hndl_per_res_out_on_other_sc(union ctl_io *io)
{
 struct ctl_softc *softc = CTL_SOFTC(io);
 union ctl_ha_msg *msg = (union ctl_ha_msg *)&io->presio.pr_msg;
 struct ctl_lun *lun;
 int i;
 uint32_t residx, targ_lun;

 targ_lun = msg->hdr.nexus.targ_mapped_lun;
 mtx_lock(&softc->ctl_lock);
 if (targ_lun >= ctl_max_luns ||
     (lun = softc->ctl_luns[targ_lun]) == ((void*)0)) {
  mtx_unlock(&softc->ctl_lock);
  return;
 }
 mtx_lock(&lun->lun_lock);
 mtx_unlock(&softc->ctl_lock);
 if (lun->flags & CTL_LUN_DISABLED) {
  mtx_unlock(&lun->lun_lock);
  return;
 }
 residx = ctl_get_initindex(&msg->hdr.nexus);
 switch(msg->pr.pr_info.action) {
 case 131:
  ctl_alloc_prkey(lun, msg->pr.pr_info.residx);
  if (ctl_get_prkey(lun, msg->pr.pr_info.residx) == 0)
   lun->pr_key_count++;
  ctl_set_prkey(lun, msg->pr.pr_info.residx,
      scsi_8btou64(msg->pr.pr_info.sa_res_key));
  lun->pr_generation++;
  break;

 case 128:
  ctl_clr_prkey(lun, msg->pr.pr_info.residx);
  lun->pr_key_count--;



  if (msg->pr.pr_info.residx == lun->pr_res_idx) {
   lun->flags &= ~CTL_LUN_PR_RESERVED;
   lun->pr_res_idx = CTL_PR_NO_RESERVATION;

   if ((lun->pr_res_type == SPR_TYPE_WR_EX_RO ||
        lun->pr_res_type == SPR_TYPE_EX_AC_RO) &&
       lun->pr_key_count) {
    for (i = softc->init_min; i < softc->init_max; i++) {
     if (ctl_get_prkey(lun, i) == 0)
      continue;

     ctl_est_ua(lun, i, CTL_UA_RES_RELEASE);
    }
   }
   lun->pr_res_type = 0;
  } else if (lun->pr_res_idx == CTL_PR_ALL_REGISTRANTS) {
   if (lun->pr_key_count==0) {
    lun->flags &= ~CTL_LUN_PR_RESERVED;
    lun->pr_res_type = 0;
    lun->pr_res_idx = CTL_PR_NO_RESERVATION;
   }
  }
  lun->pr_generation++;
  break;

 case 129:
  lun->flags |= CTL_LUN_PR_RESERVED;
  lun->pr_res_type = msg->pr.pr_info.res_type;
  lun->pr_res_idx = msg->pr.pr_info.residx;

  break;

 case 130:




  if (lun->pr_res_type != SPR_TYPE_EX_AC &&
      lun->pr_res_type != SPR_TYPE_WR_EX &&
      (lun->MODE_CTRL.queue_flags & SCP_NUAR) == 0) {
   for (i = softc->init_min; i < softc->init_max; i++) {
    if (i == residx || ctl_get_prkey(lun, i) == 0)
     continue;
    ctl_est_ua(lun, i, CTL_UA_RES_RELEASE);
   }
  }

  lun->flags &= ~CTL_LUN_PR_RESERVED;
  lun->pr_res_idx = CTL_PR_NO_RESERVATION;
  lun->pr_res_type = 0;
  break;

 case 132:
  ctl_pro_preempt_other(lun, msg);
  break;
 case 133:
  lun->flags &= ~CTL_LUN_PR_RESERVED;
  lun->pr_res_type = 0;
  lun->pr_key_count = 0;
  lun->pr_res_idx = CTL_PR_NO_RESERVATION;

  for (i=0; i < CTL_MAX_INITIATORS; i++) {
   if (ctl_get_prkey(lun, i) == 0)
    continue;
   ctl_clr_prkey(lun, i);
   ctl_est_ua(lun, i, CTL_UA_REG_PREEMPT);
  }
  lun->pr_generation++;
  break;
 }

 mtx_unlock(&lun->lun_lock);
}
