
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unicast; int src; } ;
union wpa_event_data {TYPE_1__ michael_mic_failure; } ;
typedef int u8 ;
struct nlattr {int dummy; } ;
struct i802_bss {int ctx; } ;
typedef enum nl80211_key_type { ____Placeholder_nl80211_key_type } nl80211_key_type ;
typedef int data ;


 int EVENT_MICHAEL_MIC_FAILURE ;
 int MSG_DEBUG ;
 size_t NL80211_ATTR_KEY_IDX ;
 size_t NL80211_ATTR_KEY_SEQ ;
 size_t NL80211_ATTR_KEY_TYPE ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_KEYTYPE_PAIRWISE ;
 int nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int os_memset (union wpa_event_data*,int ,int) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_event (int ,int ,union wpa_event_data*) ;

__attribute__((used)) static void mlme_event_michael_mic_failure(struct i802_bss *bss,
        struct nlattr *tb[])
{
 union wpa_event_data data;

 wpa_printf(MSG_DEBUG, "nl80211: MLME event Michael MIC failure");
 os_memset(&data, 0, sizeof(data));
 if (tb[NL80211_ATTR_MAC]) {
  wpa_hexdump(MSG_DEBUG, "nl80211: Source MAC address",
       nla_data(tb[NL80211_ATTR_MAC]),
       nla_len(tb[NL80211_ATTR_MAC]));
  data.michael_mic_failure.src = nla_data(tb[NL80211_ATTR_MAC]);
 }
 if (tb[NL80211_ATTR_KEY_SEQ]) {
  wpa_hexdump(MSG_DEBUG, "nl80211: TSC",
       nla_data(tb[NL80211_ATTR_KEY_SEQ]),
       nla_len(tb[NL80211_ATTR_KEY_SEQ]));
 }
 if (tb[NL80211_ATTR_KEY_TYPE]) {
  enum nl80211_key_type key_type =
   nla_get_u32(tb[NL80211_ATTR_KEY_TYPE]);
  wpa_printf(MSG_DEBUG, "nl80211: Key Type %d", key_type);
  if (key_type == NL80211_KEYTYPE_PAIRWISE)
   data.michael_mic_failure.unicast = 1;
 } else
  data.michael_mic_failure.unicast = 1;

 if (tb[NL80211_ATTR_KEY_IDX]) {
  u8 key_id = nla_get_u8(tb[NL80211_ATTR_KEY_IDX]);
  wpa_printf(MSG_DEBUG, "nl80211: Key Id %d", key_id);
 }

 wpa_supplicant_event(bss->ctx, EVENT_MICHAEL_MIC_FAILURE, &data);
}
