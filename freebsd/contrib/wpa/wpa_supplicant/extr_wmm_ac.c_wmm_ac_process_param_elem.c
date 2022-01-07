
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct wmm_parameter_element {TYPE_1__* ac; } ;
struct wmm_ac_assoc_data {TYPE_2__* ac_params; } ;
struct ieee802_11_elems {int wmm_len; scalar_t__ wmm; } ;
struct TYPE_4__ {int acm; } ;
struct TYPE_3__ {int aci_aifsn; } ;


 int MSG_DEBUG ;
 scalar_t__ ParseFailed ;
 int WMM_AC_ACM ;
 size_t WMM_AC_BE ;
 size_t WMM_AC_BK ;
 int WMM_AC_NUM ;
 size_t WMM_AC_VI ;
 size_t WMM_AC_VO ;
 scalar_t__ ieee802_11_parse_elems (int const*,size_t,struct ieee802_11_elems*,int) ;
 struct wmm_ac_assoc_data* os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wmm_ac_assoc_data *
wmm_ac_process_param_elem(struct wpa_supplicant *wpa_s, const u8 *ies,
     size_t ies_len)
{
 struct ieee802_11_elems elems;
 struct wmm_parameter_element *wmm_params;
 struct wmm_ac_assoc_data *assoc_data;
 int i;


 if (ieee802_11_parse_elems(ies, ies_len, &elems, 1) == ParseFailed) {
  wpa_printf(MSG_DEBUG, "WMM AC: could not parse assoc ies");
  return ((void*)0);
 }

 if (!elems.wmm) {
  wpa_printf(MSG_DEBUG, "WMM AC: No WMM IE");
  return ((void*)0);
 }

 if (elems.wmm_len != sizeof(*wmm_params)) {
  wpa_printf(MSG_DEBUG, "WMM AC: Invalid WMM ie length");
  return ((void*)0);
 }

 wmm_params = (struct wmm_parameter_element *)(elems.wmm);

 assoc_data = os_zalloc(sizeof(*assoc_data));
 if (!assoc_data)
  return ((void*)0);

 for (i = 0; i < WMM_AC_NUM; i++)
  assoc_data->ac_params[i].acm =
   !!(wmm_params->ac[i].aci_aifsn & WMM_AC_ACM);

 wpa_printf(MSG_DEBUG,
     "WMM AC: AC mandatory: AC_BE=%u AC_BK=%u AC_VI=%u AC_VO=%u",
     assoc_data->ac_params[WMM_AC_BE].acm,
     assoc_data->ac_params[WMM_AC_BK].acm,
     assoc_data->ac_params[WMM_AC_VI].acm,
     assoc_data->ac_params[WMM_AC_VO].acm);

 return assoc_data;
}
