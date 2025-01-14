
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; } ;
struct ctl_page_index {int page_len; int subpage; int page_code; int * page_data; } ;
struct ctl_lun {int lun_lock; } ;


 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_PAGE_CURRENT ;
 int CTL_RETVAL_COMPLETE ;
 int CTL_UA_MODE_CHANGE ;
 int ctl_est_ua_all (struct ctl_lun*,int ,int ) ;
 int ctl_get_initindex (int *) ;
 int ctl_isc_announce_mode (struct ctl_lun*,int ,int ,int ) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
ctl_default_page_handler(struct ctl_scsiio *ctsio,
    struct ctl_page_index *page_index, uint8_t *page_ptr)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 uint8_t *current_cp;
 int set_ua;
 uint32_t initidx;

 initidx = ctl_get_initindex(&ctsio->io_hdr.nexus);
 set_ua = 0;

 current_cp = (page_index->page_data + (page_index->page_len *
     CTL_PAGE_CURRENT));

 mtx_lock(&lun->lun_lock);
 if (memcmp(current_cp, page_ptr, page_index->page_len)) {
  memcpy(current_cp, page_ptr, page_index->page_len);
  set_ua = 1;
 }
 if (set_ua != 0)
  ctl_est_ua_all(lun, initidx, CTL_UA_MODE_CHANGE);
 mtx_unlock(&lun->lun_lock);
 if (set_ua) {
  ctl_isc_announce_mode(lun,
      ctl_get_initindex(&ctsio->io_hdr.nexus),
      page_index->page_code, page_index->subpage);
 }
 return (CTL_RETVAL_COMPLETE);
}
