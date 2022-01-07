
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int tdls_chan_switch_prohibited; int tdls_prohibited; } ;
struct ieee802_11_elems {int ext_capab_len; int * ext_capab; } ;


 int MSG_DEBUG ;
 scalar_t__ ParseFailed ;
 scalar_t__ ieee802_11_parse_elems (int const*,size_t,struct ieee802_11_elems*,int ) ;
 int wpa_printf (int ,char*,char*) ;
 int wpa_tdls_chan_switch_prohibited (struct ieee802_11_elems*) ;
 int wpa_tdls_prohibited (struct ieee802_11_elems*) ;

void wpa_tdls_ap_ies(struct wpa_sm *sm, const u8 *ies, size_t len)
{
 struct ieee802_11_elems elems;

 sm->tdls_prohibited = 0;
 sm->tdls_chan_switch_prohibited = 0;

 if (ies == ((void*)0) ||
     ieee802_11_parse_elems(ies, len, &elems, 0) == ParseFailed ||
     elems.ext_capab == ((void*)0) || elems.ext_capab_len < 5)
  return;

 sm->tdls_prohibited = wpa_tdls_prohibited(&elems);
 wpa_printf(MSG_DEBUG, "TDLS: TDLS is %s in the target BSS",
     sm->tdls_prohibited ? "prohibited" : "allowed");
 sm->tdls_chan_switch_prohibited =
  wpa_tdls_chan_switch_prohibited(&elems);
 wpa_printf(MSG_DEBUG, "TDLS: TDLS channel switch %s in the target BSS",
     sm->tdls_chan_switch_prohibited ? "prohibited" : "allowed");
}
