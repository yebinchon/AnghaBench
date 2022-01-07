
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int u_int ;
struct scsi_sense_data {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ main; } ;
struct ctl_lun {int** pending_ua; TYPE_2__ MODE_LBP; int lun_lock; TYPE_3__* ctl_softc; } ;
typedef int scsi_sense_data_type ;
typedef int ctl_ua_type ;
struct TYPE_6__ {int ctl_lock; } ;


 size_t CTL_MAX_INIT_PER_PORT ;
 int CTL_UA_LUN_CHANGE ;
 int CTL_UA_NONE ;
 int CTL_UA_POWERON ;
 int CTL_UA_THIN_PROV_THRES ;
 int MA_NOTOWNED ;
 int MA_OWNED ;
 int M_CTL ;
 int M_WAITOK ;
 int SLBPP_SITUA ;
 int SSD_ELEM_INFO ;
 int SSD_ELEM_NONE ;
 int SSD_ELEM_SKIP ;
 int SSD_KEY_UNIT_ATTENTION ;
 int ctl_clr_ua_all (struct ctl_lun*,int,int) ;
 int ctl_clr_ua_allluns (TYPE_3__*,size_t,int) ;
 int ctl_set_sense_data (struct scsi_sense_data*,int *,struct ctl_lun*,int ,int,int ,int,int,int ,int,int *,int ) ;
 int ctl_ua_to_ascq (struct ctl_lun*,int,int*,int*,int*,int **) ;
 int ffs (int) ;
 int free (int*,int ) ;
 int* malloc (int,int ,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

ctl_ua_type
ctl_build_ua(struct ctl_lun *lun, uint32_t initidx,
    struct scsi_sense_data *sense, u_int *sense_len,
    scsi_sense_data_type sense_format)
{
 ctl_ua_type *ua;
 ctl_ua_type ua_to_build, ua_to_clear;
 uint8_t *info;
 int asc, ascq;
 uint32_t p, i;

 mtx_assert(&lun->lun_lock, MA_OWNED);
 mtx_assert(&lun->ctl_softc->ctl_lock, MA_NOTOWNED);
 p = initidx / CTL_MAX_INIT_PER_PORT;
 if ((ua = lun->pending_ua[p]) == ((void*)0)) {
  mtx_unlock(&lun->lun_lock);
  ua = malloc(sizeof(ctl_ua_type) * CTL_MAX_INIT_PER_PORT,
      M_CTL, M_WAITOK);
  mtx_lock(&lun->lun_lock);
  if (lun->pending_ua[p] == ((void*)0)) {
   lun->pending_ua[p] = ua;
   for (i = 0; i < CTL_MAX_INIT_PER_PORT; i++)
    ua[i] = CTL_UA_POWERON;
  } else {
   free(ua, M_CTL);
   ua = lun->pending_ua[p];
  }
 }
 i = initidx % CTL_MAX_INIT_PER_PORT;
 if (ua[i] == CTL_UA_NONE)
  return (CTL_UA_NONE);

 ua_to_build = (1 << (ffs(ua[i]) - 1));
 ua_to_clear = ua_to_build;
 info = ((void*)0);
 ctl_ua_to_ascq(lun, ua_to_build, &asc, &ascq, &ua_to_clear, &info);

 ctl_set_sense_data(sense, sense_len, lun, sense_format, 1,
                   SSD_KEY_UNIT_ATTENTION, asc, ascq,
     ((info != ((void*)0)) ? SSD_ELEM_INFO : SSD_ELEM_SKIP), 8, info,
     SSD_ELEM_NONE);


 ua[i] &= ~ua_to_clear;

 if (ua_to_build == CTL_UA_LUN_CHANGE) {
  mtx_unlock(&lun->lun_lock);
  mtx_lock(&lun->ctl_softc->ctl_lock);
  ctl_clr_ua_allluns(lun->ctl_softc, initidx, ua_to_build);
  mtx_unlock(&lun->ctl_softc->ctl_lock);
  mtx_lock(&lun->lun_lock);
 } else if (ua_to_build == CTL_UA_THIN_PROV_THRES &&
     (lun->MODE_LBP.main.flags & SLBPP_SITUA) != 0) {
  ctl_clr_ua_all(lun, -1, ua_to_build);
 }

 return (ua_to_build);
}
