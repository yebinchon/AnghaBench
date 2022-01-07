
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct scsi_info_exceptions_page {int info_flags; scalar_t__ mrie; int interval_timer; int report_count; } ;
struct ctl_scsiio {int dummy; } ;
struct ctl_page_index {int dummy; } ;
struct ctl_lun {int ie_asc; int ie_ascq; int ie_reported; int ie_reportcnt; int lun_lock; int ie_callout; } ;


 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_UA_IE ;
 int SIEP_FLAGS_TEST ;
 scalar_t__ SIEP_MRIE_UA ;
 int UINT32_MAX ;
 int callout_reset (int *,int,int ,struct ctl_lun*) ;
 int callout_stop (int *) ;
 int ctl_clr_ua_all (struct ctl_lun*,int,int ) ;
 int ctl_default_page_handler (struct ctl_scsiio*,struct ctl_page_index*,int *) ;
 int ctl_est_ua_all (struct ctl_lun*,int,int ) ;
 int ctl_ie_timer ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_4btoul (int ) ;

int
ctl_ie_page_handler(struct ctl_scsiio *ctsio,
    struct ctl_page_index *page_index, uint8_t *page_ptr)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_info_exceptions_page *pg;
 uint64_t t;

 (void)ctl_default_page_handler(ctsio, page_index, page_ptr);

 pg = (struct scsi_info_exceptions_page *)page_ptr;
 mtx_lock(&lun->lun_lock);
 if (pg->info_flags & SIEP_FLAGS_TEST) {
  lun->ie_asc = 0x5d;
  lun->ie_ascq = 0xff;
  if (pg->mrie == SIEP_MRIE_UA) {
   ctl_est_ua_all(lun, -1, CTL_UA_IE);
   lun->ie_reported = 1;
  } else {
   ctl_clr_ua_all(lun, -1, CTL_UA_IE);
   lun->ie_reported = -1;
  }
  lun->ie_reportcnt = 1;
  if (lun->ie_reportcnt < scsi_4btoul(pg->report_count)) {
   lun->ie_reportcnt++;
   t = scsi_4btoul(pg->interval_timer);
   if (t == 0 || t == UINT32_MAX)
    t = 3000;
   callout_reset(&lun->ie_callout, t * hz / 10,
       ctl_ie_timer, lun);
  }
 } else {
  lun->ie_asc = 0;
  lun->ie_ascq = 0;
  lun->ie_reported = 1;
  ctl_clr_ua_all(lun, -1, CTL_UA_IE);
  lun->ie_reportcnt = UINT32_MAX;
  callout_stop(&lun->ie_callout);
 }
 mtx_unlock(&lun->lun_lock);
 return (CTL_RETVAL_COMPLETE);
}
