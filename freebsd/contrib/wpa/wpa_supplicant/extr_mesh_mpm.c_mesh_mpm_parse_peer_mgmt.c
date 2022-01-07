
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpa_supplicant {int dummy; } ;
struct mesh_peer_mgmt_ie {scalar_t__ const* chosen_pmk; scalar_t__ const* proto_id; scalar_t__ const* llid; scalar_t__ const* reason; scalar_t__ const* plid; } ;


 int MSG_DEBUG ;
 scalar_t__ PLINK_CLOSE ;
 scalar_t__ PLINK_CONFIRM ;
 scalar_t__ PLINK_OPEN ;
 size_t SAE_PMKID_LEN ;
 int os_memset (struct mesh_peer_mgmt_ie*,int ,int) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;

__attribute__((used)) static int mesh_mpm_parse_peer_mgmt(struct wpa_supplicant *wpa_s,
        u8 action_field,
        const u8 *ie, size_t len,
        struct mesh_peer_mgmt_ie *mpm_ie)
{
 os_memset(mpm_ie, 0, sizeof(*mpm_ie));


 if (len >= SAE_PMKID_LEN) {
  mpm_ie->chosen_pmk = ie + len - SAE_PMKID_LEN;
  len -= SAE_PMKID_LEN;
 }

 if ((action_field == PLINK_OPEN && len != 4) ||
     (action_field == PLINK_CONFIRM && len != 6) ||
     (action_field == PLINK_CLOSE && len != 6 && len != 8)) {
  wpa_msg(wpa_s, MSG_DEBUG, "MPM: Invalid peer mgmt ie");
  return -1;
 }


 if (len < 4)
  return -1;
 mpm_ie->proto_id = ie;
 mpm_ie->llid = ie + 2;
 ie += 4;
 len -= 4;


 if (action_field == PLINK_CLOSE) {
  if (len < 2)
   return -1;
  mpm_ie->reason = ie + len - 2;
  len -= 2;
 }


 if (len >= 2)
  mpm_ie->plid = ie;

 return 0;
}
