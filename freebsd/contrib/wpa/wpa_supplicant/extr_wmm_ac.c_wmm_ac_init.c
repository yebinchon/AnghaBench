
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct wpa_supplicant {struct wmm_ac_assoc_data* wmm_ac_assoc_info; int * addts_request; scalar_t__ wmm_ac_last_dialog_token; int tspecs; } ;
struct wmm_params {int info_bitmap; int uapsd_queues; } ;
struct wmm_ac_assoc_data {TYPE_1__* ac_params; } ;
struct TYPE_2__ {int uapsd; } ;


 int BIT (size_t) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 size_t WMM_AC_NUM ;
 int WMM_PARAMS_UAPSD_QUEUES_INFO ;
 int os_memset (int ,int ,int) ;
 struct wmm_ac_assoc_data* wmm_ac_process_param_elem (struct wpa_supplicant*,size_t const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wmm_ac_init(struct wpa_supplicant *wpa_s, const u8 *ies,
         size_t ies_len, const struct wmm_params *wmm_params)
{
 struct wmm_ac_assoc_data *assoc_data;
 u8 ac;

 if (wpa_s->wmm_ac_assoc_info) {
  wpa_printf(MSG_ERROR, "WMM AC: Already initialized");
  return -1;
 }

 if (!ies || !(wmm_params->info_bitmap & WMM_PARAMS_UAPSD_QUEUES_INFO)) {

  return -1;
 }

 os_memset(wpa_s->tspecs, 0, sizeof(wpa_s->tspecs));
 wpa_s->wmm_ac_last_dialog_token = 0;
 wpa_s->addts_request = ((void*)0);

 assoc_data = wmm_ac_process_param_elem(wpa_s, ies, ies_len);
 if (!assoc_data)
  return -1;

 wpa_printf(MSG_DEBUG, "WMM AC: U-APSD queues=0x%x",
     wmm_params->uapsd_queues);

 for (ac = 0; ac < WMM_AC_NUM; ac++) {
  assoc_data->ac_params[ac].uapsd =
   !!(wmm_params->uapsd_queues & BIT(ac));
 }

 wpa_s->wmm_ac_assoc_info = assoc_data;
 return 0;
}
