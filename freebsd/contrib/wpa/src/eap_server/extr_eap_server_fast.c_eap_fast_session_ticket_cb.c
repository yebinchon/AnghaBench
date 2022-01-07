
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct os_time {scalar_t__ sec; } ;
struct eap_fast_data {int* identity; size_t identity_len; int send_new_pac; scalar_t__ pac_key_refresh_time; int pac_opaque_encr; } ;
typedef scalar_t__ os_time_t ;


 int EAP_FAST_PAC_KEY_LEN ;
 int MSG_DEBUG ;




 size_t PAC_TYPE_PAC_OPAQUE ;
 size_t WPA_GET_BE16 (int const*) ;
 scalar_t__ WPA_GET_BE32 (int*) ;
 scalar_t__ aes_unwrap (int ,int,size_t,int const*,int*) ;
 int eap_fast_derive_master_secret (int*,int const*,int const*,int*) ;
 int os_free (int*) ;
 scalar_t__ os_get_time (struct os_time*) ;
 void* os_malloc (size_t) ;
 int os_memcpy (int*,int*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int*,size_t) ;
 int wpa_hexdump_key (int ,char*,int*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_fast_session_ticket_cb(void *ctx, const u8 *ticket, size_t len,
          const u8 *client_random,
          const u8 *server_random,
          u8 *master_secret)
{
 struct eap_fast_data *data = ctx;
 const u8 *pac_opaque;
 size_t pac_opaque_len;
 u8 *buf, *pos, *end, *pac_key = ((void*)0);
 os_time_t lifetime = 0;
 struct os_time now;
 u8 *identity = ((void*)0);
 size_t identity_len = 0;

 wpa_printf(MSG_DEBUG, "EAP-FAST: SessionTicket callback");
 wpa_hexdump(MSG_DEBUG, "EAP-FAST: SessionTicket (PAC-Opaque)",
      ticket, len);

 if (len < 4 || WPA_GET_BE16(ticket) != PAC_TYPE_PAC_OPAQUE) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Ignore invalid "
      "SessionTicket");
  return 0;
 }

 pac_opaque_len = WPA_GET_BE16(ticket + 2);
 pac_opaque = ticket + 4;
 if (pac_opaque_len < 8 || pac_opaque_len % 8 ||
     pac_opaque_len > len - 4) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Ignore invalid PAC-Opaque "
      "(len=%lu left=%lu)",
      (unsigned long) pac_opaque_len,
      (unsigned long) len);
  return 0;
 }
 wpa_hexdump(MSG_DEBUG, "EAP-FAST: Received PAC-Opaque",
      pac_opaque, pac_opaque_len);

 buf = os_malloc(pac_opaque_len - 8);
 if (buf == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Failed to allocate memory "
      "for decrypting PAC-Opaque");
  return 0;
 }

 if (aes_unwrap(data->pac_opaque_encr, sizeof(data->pac_opaque_encr),
         (pac_opaque_len - 8) / 8, pac_opaque, buf) < 0) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Failed to decrypt "
      "PAC-Opaque");
  os_free(buf);






  return 0;
 }

 end = buf + pac_opaque_len - 8;
 wpa_hexdump_key(MSG_DEBUG, "EAP-FAST: Decrypted PAC-Opaque",
   buf, end - buf);

 pos = buf;
 while (end - pos > 1) {
  u8 id, elen;

  id = *pos++;
  elen = *pos++;
  if (elen > end - pos)
   break;

  switch (id) {
  case 128:
   goto done;
  case 130:
   if (elen != EAP_FAST_PAC_KEY_LEN) {
    wpa_printf(MSG_DEBUG,
        "EAP-FAST: Invalid PAC-Key length %d",
        elen);
    os_free(buf);
    return -1;
   }
   pac_key = pos;
   wpa_hexdump_key(MSG_DEBUG, "EAP-FAST: PAC-Key from "
     "decrypted PAC-Opaque",
     pac_key, EAP_FAST_PAC_KEY_LEN);
   break;
  case 129:
   if (elen != 4) {
    wpa_printf(MSG_DEBUG, "EAP-FAST: Invalid "
        "PAC-Key lifetime length %d",
        elen);
    os_free(buf);
    return -1;
   }
   lifetime = WPA_GET_BE32(pos);
   break;
  case 131:
   identity = pos;
   identity_len = elen;
   break;
  }

  pos += elen;
 }
done:

 if (pac_key == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: No PAC-Key included in "
      "PAC-Opaque");
  os_free(buf);
  return -1;
 }

 if (identity) {
  wpa_hexdump_ascii(MSG_DEBUG, "EAP-FAST: Identity from "
      "PAC-Opaque", identity, identity_len);
  os_free(data->identity);
  data->identity = os_malloc(identity_len);
  if (data->identity) {
   os_memcpy(data->identity, identity, identity_len);
   data->identity_len = identity_len;
  }
 }

 if (os_get_time(&now) < 0 || lifetime <= 0 || now.sec > lifetime) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC-Key not valid anymore "
      "(lifetime=%ld now=%ld)", lifetime, now.sec);
  data->send_new_pac = 2;
 } else if (lifetime - now.sec < data->pac_key_refresh_time) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: PAC-Key soft timeout; send "
      "an update if authentication succeeds");
  data->send_new_pac = 1;
 }

 eap_fast_derive_master_secret(pac_key, server_random, client_random,
          master_secret);

 os_free(buf);

 return 1;
}
