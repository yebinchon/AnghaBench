
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ieee80211_he_operation {int he_oper_params; int he_mcs_nss_set; } ;
struct hostapd_data {TYPE_3__* iface; } ;
struct TYPE_6__ {TYPE_2__* conf; int current_mode; } ;
struct TYPE_4__ {int he_default_pe_duration; int he_rts_threshold; int he_bss_color; int he_basic_mcs_nss_set; scalar_t__ he_twt_required; } ;
struct TYPE_5__ {TYPE_1__ he_op; } ;


 int HE_OPERATION_BSS_COLOR_OFFSET ;
 int HE_OPERATION_DFLT_PE_DURATION_OFFSET ;
 int HE_OPERATION_RTS_THRESHOLD_OFFSET ;
 int HE_OPERATION_TWT_REQUIRED ;
 int WLAN_EID_EXTENSION ;
 int WLAN_EID_EXT_HE_OPERATION ;
 int host_to_le16 (int ) ;
 int host_to_le32 (int) ;
 int os_memset (struct ieee80211_he_operation*,int ,int) ;

u8 * hostapd_eid_he_operation(struct hostapd_data *hapd, u8 *eid)
{
 struct ieee80211_he_operation *oper;
 u8 *pos = eid;
 int oper_size = 6;
 u32 params = 0;

 if (!hapd->iface->current_mode)
  return eid;

 *pos++ = WLAN_EID_EXTENSION;
 *pos++ = 1 + oper_size;
 *pos++ = WLAN_EID_EXT_HE_OPERATION;

 oper = (struct ieee80211_he_operation *) pos;
 os_memset(oper, 0, sizeof(*oper));

 if (hapd->iface->conf->he_op.he_default_pe_duration)
  params |= (hapd->iface->conf->he_op.he_default_pe_duration <<
      HE_OPERATION_DFLT_PE_DURATION_OFFSET);

 if (hapd->iface->conf->he_op.he_twt_required)
  params |= HE_OPERATION_TWT_REQUIRED;

 if (hapd->iface->conf->he_op.he_rts_threshold)
  params |= (hapd->iface->conf->he_op.he_rts_threshold <<
      HE_OPERATION_RTS_THRESHOLD_OFFSET);

 if (hapd->iface->conf->he_op.he_bss_color)
  params |= (hapd->iface->conf->he_op.he_bss_color <<
      HE_OPERATION_BSS_COLOR_OFFSET);


 oper->he_mcs_nss_set =
  host_to_le16(hapd->iface->conf->he_op.he_basic_mcs_nss_set);



 oper->he_oper_params = host_to_le32(params);

 pos += oper_size;

 return pos;
}
