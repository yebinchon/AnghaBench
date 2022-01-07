
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {scalar_t__ mfp; int mgmt_group_cipher; int ap_rsn_ie_len; scalar_t__ ap_rsn_ie; int proto; int key_mgmt; int group_cipher; int pairwise_cipher; } ;
struct wpa_ie_data {int capabilities; } ;


 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int WPA_CAPABILITY_MFPC ;
 int WPA_CAPABILITY_MFPR ;
 int os_snprintf (char*,int,char*,int,int ,...) ;
 scalar_t__ os_snprintf_error (int,int) ;
 int wpa_cipher_txt (int ) ;
 int wpa_key_mgmt_txt (int ,int ) ;
 scalar_t__ wpa_parse_wpa_ie_rsn (scalar_t__,int ,struct wpa_ie_data*) ;

int wpa_sm_get_status(struct wpa_sm *sm, char *buf, size_t buflen,
        int verbose)
{
 char *pos = buf, *end = buf + buflen;
 int ret;

 ret = os_snprintf(pos, end - pos,
     "pairwise_cipher=%s\n"
     "group_cipher=%s\n"
     "key_mgmt=%s\n",
     wpa_cipher_txt(sm->pairwise_cipher),
     wpa_cipher_txt(sm->group_cipher),
     wpa_key_mgmt_txt(sm->key_mgmt, sm->proto));
 if (os_snprintf_error(end - pos, ret))
  return pos - buf;
 pos += ret;

 if (sm->mfp != NO_MGMT_FRAME_PROTECTION && sm->ap_rsn_ie) {
  struct wpa_ie_data rsn;
  if (wpa_parse_wpa_ie_rsn(sm->ap_rsn_ie, sm->ap_rsn_ie_len, &rsn)
      >= 0 &&
      rsn.capabilities & (WPA_CAPABILITY_MFPR |
     WPA_CAPABILITY_MFPC)) {
   ret = os_snprintf(pos, end - pos, "pmf=%d\n"
       "mgmt_group_cipher=%s\n",
       (rsn.capabilities &
        WPA_CAPABILITY_MFPR) ? 2 : 1,
       wpa_cipher_txt(
        sm->mgmt_group_cipher));
   if (os_snprintf_error(end - pos, ret))
    return pos - buf;
   pos += ret;
  }
 }

 return pos - buf;
}
