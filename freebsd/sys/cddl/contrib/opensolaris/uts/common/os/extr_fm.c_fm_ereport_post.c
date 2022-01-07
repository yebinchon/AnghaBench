
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sysevent_id_t ;
typedef int nvlist_t ;
typedef int evchan_t ;
struct TYPE_4__ {int ui64; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
struct TYPE_6__ {TYPE_2__ erpt_dropped; } ;


 int DDI_SLEEP ;
 int EC_DEV_STATUS ;
 int EC_FM ;
 size_t ERPT_DATA_SZ ;
 int ESC_DEV_DLE ;
 int ESC_FM_ERROR ;
 int EVCH_CREAT ;
 int EVCH_HOLD_PEND ;
 int FM_ERROR_CHAN ;
 int FM_PUB ;
 int NV_ENCODE_NATIVE ;
 int SUNW_VENDOR ;
 int atomic_inc_64 (int *) ;
 int ddi_log_sysevent (int *,int ,int ,int ,int *,int *,int ) ;
 TYPE_3__ erpt_kstat_data ;
 int nvlist_size (int *,size_t*,int ) ;
 scalar_t__ sysevent_evc_bind (int ,int **,int) ;
 scalar_t__ sysevent_evc_publish (int *,int ,int ,int ,int ,int *,int) ;
 int sysevent_evc_unbind (int *) ;

void
fm_ereport_post(nvlist_t *ereport, int evc_flag)
{
 size_t nvl_size = 0;
 evchan_t *error_chan;
 sysevent_id_t eid;

 (void) nvlist_size(ereport, &nvl_size, NV_ENCODE_NATIVE);
 if (nvl_size > ERPT_DATA_SZ || nvl_size == 0) {
  atomic_inc_64(&erpt_kstat_data.erpt_dropped.value.ui64);
  return;
 }
 (void) ddi_log_sysevent(((void*)0), SUNW_VENDOR, EC_DEV_STATUS,
     ESC_DEV_DLE, ereport, &eid, DDI_SLEEP);

}
