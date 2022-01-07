
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int eapol; } ;


 int MSG_DEBUG ;
 int * eapol_sm_get_session_id (int ,size_t*) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ieee802_1x_auth_get_session_id(struct wpa_supplicant *wpa_s,
       const u8 *addr, u8 *sid, size_t *len)
{
 const u8 *session_id;
 size_t id_len, need_len;

 session_id = eapol_sm_get_session_id(wpa_s->eapol, &id_len);
 if (session_id == ((void*)0)) {
  wpa_printf(MSG_DEBUG,
      "Failed to get SessionID from EAPOL state machines");
  return -1;
 }

 need_len = 1 + 2 * 32 ;
 if (need_len > id_len) {
  wpa_printf(MSG_DEBUG, "EAP Session-Id not long enough");
  return -1;
 }

 os_memcpy(sid, session_id, need_len);
 *len = need_len;

 return 0;
}
