
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmm_information_element {scalar_t__ oui_subtype; scalar_t__ version; int qos_info; int oui_type; int * oui; } ;
struct hostapd_data {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ WMM_OUI_SUBTYPE_INFORMATION_ELEMENT ;
 scalar_t__ WMM_VERSION ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

int hostapd_eid_wmm_valid(struct hostapd_data *hapd, const u8 *eid, size_t len)
{
 struct wmm_information_element *wmm;

 wpa_hexdump(MSG_MSGDUMP, "WMM IE", eid, len);

 if (len < sizeof(struct wmm_information_element)) {
  wpa_printf(MSG_DEBUG, "Too short WMM IE (len=%lu)",
      (unsigned long) len);
  return 0;
 }

 wmm = (struct wmm_information_element *) eid;
 wpa_printf(MSG_DEBUG, "Validating WMM IE: OUI %02x:%02x:%02x  "
     "OUI type %d  OUI sub-type %d  version %d  QoS info 0x%x",
     wmm->oui[0], wmm->oui[1], wmm->oui[2], wmm->oui_type,
     wmm->oui_subtype, wmm->version, wmm->qos_info);
 if (wmm->oui_subtype != WMM_OUI_SUBTYPE_INFORMATION_ELEMENT ||
     wmm->version != WMM_VERSION) {
  wpa_printf(MSG_DEBUG, "Unsupported WMM IE Subtype/Version");
  return 0;
 }

 return 1;
}
