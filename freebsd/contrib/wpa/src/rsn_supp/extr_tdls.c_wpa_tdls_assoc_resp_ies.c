
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {int tdls_prohibited; int tdls_chan_switch_prohibited; } ;
struct ieee802_11_elems {int ext_capab_len; int * ext_capab; } ;


 int MSG_DEBUG ;
 scalar_t__ ParseFailed ;
 scalar_t__ ieee802_11_parse_elems (int const*,size_t,struct ieee802_11_elems*,int ) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_tdls_chan_switch_prohibited (struct ieee802_11_elems*) ;
 scalar_t__ wpa_tdls_prohibited (struct ieee802_11_elems*) ;

void wpa_tdls_assoc_resp_ies(struct wpa_sm *sm, const u8 *ies, size_t len)
{
 struct ieee802_11_elems elems;

 if (ies == ((void*)0) ||
     ieee802_11_parse_elems(ies, len, &elems, 0) == ParseFailed ||
     elems.ext_capab == ((void*)0) || elems.ext_capab_len < 5)
  return;

 if (!sm->tdls_prohibited && wpa_tdls_prohibited(&elems)) {
  wpa_printf(MSG_DEBUG, "TDLS: TDLS prohibited based on "
      "(Re)Association Response IEs");
  sm->tdls_prohibited = 1;
 }

 if (!sm->tdls_chan_switch_prohibited &&
     wpa_tdls_chan_switch_prohibited(&elems)) {
  wpa_printf(MSG_DEBUG,
      "TDLS: TDLS channel switch prohibited based on (Re)Association Response IEs");
  sm->tdls_chan_switch_prohibited = 1;
 }
}
