
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_responder_data {size_t i_nonce_len; int i_nonce; } ;


 size_t IKEV2_NONCE_MAX_LEN ;
 size_t IKEV2_NONCE_MIN_LEN ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int os_memcpy (int ,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int ,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ikev2_process_ni(struct ikev2_responder_data *data,
       const u8 *ni, size_t ni_len)
{
 if (ni == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Ni not received");
  return -1;
 }

 if (ni_len < IKEV2_NONCE_MIN_LEN || ni_len > IKEV2_NONCE_MAX_LEN) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid Ni length %ld",
             (long) ni_len);
  return -1;
 }

 data->i_nonce_len = ni_len;
 os_memcpy(data->i_nonce, ni, ni_len);
 wpa_hexdump(MSG_MSGDUMP, "IKEV2: Ni",
      data->i_nonce, data->i_nonce_len);

 return 0;
}
