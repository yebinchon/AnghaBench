
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ctl_softc {scalar_t__ ha_link; scalar_t__ ha_mode; } ;
struct TYPE_6__ {int nexus; } ;
struct ctl_scsiio {TYPE_3__ io_hdr; } ;
struct TYPE_5__ {int eca_and_aen; } ;
struct ctl_lun {int flags; scalar_t__ res_idx; int pr_res_type; scalar_t__ pr_res_idx; TYPE_2__ MODE_CTRL; TYPE_1__* be_lun; int lun_lock; struct ctl_softc* ctl_softc; } ;
struct ctl_cmd_entry {int flags; int pattern; } ;
struct TYPE_4__ {int flags; } ;


 int CTL_CMD_FLAG_ALLOW_ON_PR_RESV ;
 int CTL_CMD_FLAG_ALLOW_ON_PR_WRESV ;
 int CTL_CMD_FLAG_ALLOW_ON_RESV ;
 int CTL_CMD_FLAG_OK_ON_NO_MEDIA ;
 int CTL_CMD_FLAG_OK_ON_STANDBY ;
 int CTL_CMD_FLAG_OK_ON_UNAVAIL ;
 scalar_t__ CTL_HA_LINK_OFFLINE ;
 scalar_t__ CTL_HA_MODE_ACT_STBY ;
 scalar_t__ CTL_HA_MODE_XFER ;
 int CTL_LUN_EJECTED ;
 int CTL_LUN_FLAG_READONLY ;
 int CTL_LUN_NO_MEDIA ;
 int CTL_LUN_PAT_WRITE ;
 int CTL_LUN_PEER_SC_PRIMARY ;
 int CTL_LUN_PRIMARY_SC ;
 int CTL_LUN_PR_RESERVED ;
 int CTL_LUN_REMOVABLE ;
 int CTL_LUN_RESERVED ;
 int CTL_LUN_STOPPED ;
 int MA_OWNED ;
 int SCP_SWP ;
 int SPR_TYPE_WR_EX ;
 int SPR_TYPE_WR_EX_AR ;
 int SPR_TYPE_WR_EX_RO ;
 int SSD_ELEM_NONE ;
 int SSD_KEY_DATA_PROTECT ;
 scalar_t__ ctl_get_initindex (int *) ;
 scalar_t__ ctl_get_prkey (struct ctl_lun*,scalar_t__) ;
 int ctl_set_hw_write_protected (struct ctl_scsiio*) ;
 int ctl_set_lun_ejected (struct ctl_scsiio*) ;
 int ctl_set_lun_int_reqd (struct ctl_scsiio*) ;
 int ctl_set_lun_no_media (struct ctl_scsiio*) ;
 int ctl_set_lun_standby (struct ctl_scsiio*) ;
 int ctl_set_lun_stopped (struct ctl_scsiio*) ;
 int ctl_set_lun_transit (struct ctl_scsiio*) ;
 int ctl_set_lun_unavail (struct ctl_scsiio*) ;
 int ctl_set_reservation_conflict (struct ctl_scsiio*) ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
ctl_scsiio_lun_check(struct ctl_lun *lun,
    const struct ctl_cmd_entry *entry, struct ctl_scsiio *ctsio)
{
 struct ctl_softc *softc = lun->ctl_softc;
 int retval;
 uint32_t residx;

 retval = 0;

 mtx_assert(&lun->lun_lock, MA_OWNED);





 if ((lun->flags & CTL_LUN_PRIMARY_SC) == 0) {
  if (softc->ha_link == CTL_HA_LINK_OFFLINE &&
      (entry->flags & CTL_CMD_FLAG_OK_ON_UNAVAIL) == 0) {
   ctl_set_lun_unavail(ctsio);
   retval = 1;
   goto bailout;
  }
  if ((lun->flags & CTL_LUN_PEER_SC_PRIMARY) == 0 &&
      (entry->flags & CTL_CMD_FLAG_OK_ON_UNAVAIL) == 0) {
   ctl_set_lun_transit(ctsio);
   retval = 1;
   goto bailout;
  }
  if (softc->ha_mode == CTL_HA_MODE_ACT_STBY &&
      (entry->flags & CTL_CMD_FLAG_OK_ON_STANDBY) == 0) {
   ctl_set_lun_standby(ctsio);
   retval = 1;
   goto bailout;
  }


  if (softc->ha_mode == CTL_HA_MODE_XFER)
   goto bailout;
 }

 if (entry->pattern & CTL_LUN_PAT_WRITE) {
  if (lun->be_lun &&
      lun->be_lun->flags & CTL_LUN_FLAG_READONLY) {
   ctl_set_hw_write_protected(ctsio);
   retval = 1;
   goto bailout;
  }
  if ((lun->MODE_CTRL.eca_and_aen & SCP_SWP) != 0) {
   ctl_set_sense(ctsio, 1,
                     SSD_KEY_DATA_PROTECT,
               0x27, 0x02, SSD_ELEM_NONE);
   retval = 1;
   goto bailout;
  }
 }






 residx = ctl_get_initindex(&ctsio->io_hdr.nexus);
 if ((lun->flags & CTL_LUN_RESERVED)
  && ((entry->flags & CTL_CMD_FLAG_ALLOW_ON_RESV) == 0)) {
  if (lun->res_idx != residx) {
   ctl_set_reservation_conflict(ctsio);
   retval = 1;
   goto bailout;
  }
 }

 if ((lun->flags & CTL_LUN_PR_RESERVED) == 0 ||
     (entry->flags & CTL_CMD_FLAG_ALLOW_ON_PR_RESV)) {
                                             ;
 } else if ((entry->flags & CTL_CMD_FLAG_ALLOW_ON_PR_WRESV) &&
     (lun->pr_res_type == SPR_TYPE_WR_EX ||
      lun->pr_res_type == SPR_TYPE_WR_EX_RO ||
      lun->pr_res_type == SPR_TYPE_WR_EX_AR)) {
                                                        ;
 } else {





  if (ctl_get_prkey(lun, residx) == 0 ||
      (residx != lun->pr_res_idx && lun->pr_res_type < 4)) {
   ctl_set_reservation_conflict(ctsio);
   retval = 1;
   goto bailout;
  }
 }

 if ((entry->flags & CTL_CMD_FLAG_OK_ON_NO_MEDIA) == 0) {
  if (lun->flags & CTL_LUN_EJECTED)
   ctl_set_lun_ejected(ctsio);
  else if (lun->flags & CTL_LUN_NO_MEDIA) {
   if (lun->flags & CTL_LUN_REMOVABLE)
    ctl_set_lun_no_media(ctsio);
   else
    ctl_set_lun_int_reqd(ctsio);
  } else if (lun->flags & CTL_LUN_STOPPED)
   ctl_set_lun_stopped(ctsio);
  else
   goto bailout;
  retval = 1;
  goto bailout;
 }

bailout:
 return (retval);
}
