
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {int pmk_len; int xxkey_len; scalar_t__ key_mgmt; scalar_t__ proto; int bssid; TYPE_1__* ctx; struct rsn_pmksa_cache_entry* cur_pmksa; scalar_t__ ft_protocol; int pmksa; int network_ctx; int own_addr; int * pmk; int * fils_cache_id; scalar_t__ fils_cache_id_set; int * xxkey; scalar_t__ eapol; } ;
struct rsn_pmksa_cache_entry {int pmkid; } ;
typedef int buf ;
struct TYPE_2__ {int msg_ctx; } ;


 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_START ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int PMKID_LEN ;
 int PMK_LEN ;
 int PMK_LEN_SUITE_B_192 ;
 int SHA384_MAC_LEN ;
 scalar_t__ WPA_KEY_MGMT_FT_SAE ;
 scalar_t__ WPA_KEY_MGMT_OSEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int eapol_sm_get_key (scalar_t__,int *,int) ;
 int eapol_sm_notify_cached (scalar_t__) ;
 int forced_memzero (int *,int) ;
 int os_free (int *) ;
 scalar_t__ os_memcmp_const (int const*,int ,int ) ;
 int os_memcpy (int *,int *,int) ;
 struct rsn_pmksa_cache_entry* pmksa_cache_add (int ,int *,int,int *,int *,int ,unsigned char const*,int ,int ,scalar_t__,int const*) ;
 struct rsn_pmksa_cache_entry* pmksa_cache_get (int ,unsigned char const*,int const*,int *,int ) ;
 int wpa_dbg (int ,int ,char*) ;
 int wpa_hexdump (int ,char*,int const*,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 scalar_t__ wpa_key_mgmt_ft (scalar_t__) ;
 scalar_t__ wpa_key_mgmt_sha384 (scalar_t__) ;
 int wpa_key_mgmt_suite_b (scalar_t__) ;
 scalar_t__ wpa_key_mgmt_wpa_ieee8021x (scalar_t__) ;
 int wpa_msg (int ,int ,char*) ;
 int wpa_printf (int ,char*) ;
 int * wpa_sm_alloc_eapol (struct wpa_sm*,int ,int *,int ,size_t*,int *) ;
 int wpa_sm_ether_send (struct wpa_sm*,int ,int ,int *,size_t) ;
 int wpa_sm_set_pmk_from_pmksa (struct wpa_sm*) ;
 int wpa_supplicant_key_mgmt_set_pmk (struct wpa_sm*) ;

__attribute__((used)) static int wpa_supplicant_get_pmk(struct wpa_sm *sm,
      const unsigned char *src_addr,
      const u8 *pmkid)
{
 int abort_cached = 0;

 if (pmkid && !sm->cur_pmksa) {




  sm->cur_pmksa = pmksa_cache_get(sm->pmksa, src_addr, pmkid,
      ((void*)0), 0);
  if (sm->cur_pmksa) {
   wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
    "RSN: found matching PMKID from PMKSA cache");
  } else {
   wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
    "RSN: no matching PMKID found");
   abort_cached = 1;
  }
 }

 if (pmkid && sm->cur_pmksa &&
     os_memcmp_const(pmkid, sm->cur_pmksa->pmkid, PMKID_LEN) == 0) {
  wpa_hexdump(MSG_DEBUG, "RSN: matched PMKID", pmkid, PMKID_LEN);
  wpa_sm_set_pmk_from_pmksa(sm);
  wpa_hexdump_key(MSG_DEBUG, "RSN: PMK from PMKSA cache",
    sm->pmk, sm->pmk_len);
  eapol_sm_notify_cached(sm->eapol);
 } else if (wpa_key_mgmt_wpa_ieee8021x(sm->key_mgmt) && sm->eapol) {
  int res, pmk_len;




  if (wpa_key_mgmt_sha384(sm->key_mgmt))
   pmk_len = PMK_LEN_SUITE_B_192;
  else
   pmk_len = PMK_LEN;
  res = eapol_sm_get_key(sm->eapol, sm->pmk, pmk_len);
  if (res) {
   if (pmk_len == PMK_LEN) {




    res = eapol_sm_get_key(sm->eapol, sm->pmk, 16);
    pmk_len = 16;
   }
  }
  if (res == 0) {
   struct rsn_pmksa_cache_entry *sa = ((void*)0);
   const u8 *fils_cache_id = ((void*)0);






   wpa_hexdump_key(MSG_DEBUG, "WPA: PMK from EAPOL state "
     "machines", sm->pmk, pmk_len);
   sm->pmk_len = pmk_len;
   wpa_supplicant_key_mgmt_set_pmk(sm);
   if (sm->proto == WPA_PROTO_RSN &&
       !wpa_key_mgmt_suite_b(sm->key_mgmt) &&
       !wpa_key_mgmt_ft(sm->key_mgmt)) {
    sa = pmksa_cache_add(sm->pmksa,
           sm->pmk, pmk_len, ((void*)0),
           ((void*)0), 0,
           src_addr, sm->own_addr,
           sm->network_ctx,
           sm->key_mgmt,
           fils_cache_id);
   }
   if (!sm->cur_pmksa && pmkid &&
       pmksa_cache_get(sm->pmksa, src_addr, pmkid, ((void*)0),
        0)) {
    wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
     "RSN: the new PMK matches with the "
     "PMKID");
    abort_cached = 0;
   } else if (sa && !sm->cur_pmksa && pmkid) {







    wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
     "RSN: PMKID mismatch - authentication server may have derived different MSK?!");
    return -1;
   }

   if (!sm->cur_pmksa)
    sm->cur_pmksa = sa;





  } else {
   wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
    "WPA: Failed to get master session key from "
    "EAPOL state machines - key handshake "
    "aborted");
   if (sm->cur_pmksa) {
    wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
     "RSN: Cancelled PMKSA caching "
     "attempt");
    sm->cur_pmksa = ((void*)0);
    abort_cached = 1;
   } else if (!abort_cached) {
    return -1;
   }
  }
 }

 if (abort_cached && wpa_key_mgmt_wpa_ieee8021x(sm->key_mgmt) &&
     !wpa_key_mgmt_suite_b(sm->key_mgmt) &&
     !wpa_key_mgmt_ft(sm->key_mgmt) && sm->key_mgmt != WPA_KEY_MGMT_OSEN)
 {

  u8 *buf;
  size_t buflen;

  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
   "RSN: no PMKSA entry found - trigger "
   "full EAP authentication");
  buf = wpa_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_START,
      ((void*)0), 0, &buflen, ((void*)0));
  if (buf) {
   wpa_sm_ether_send(sm, sm->bssid, ETH_P_EAPOL,
       buf, buflen);
   os_free(buf);
   return -2;
  }

  return -1;
 }

 return 0;
}
