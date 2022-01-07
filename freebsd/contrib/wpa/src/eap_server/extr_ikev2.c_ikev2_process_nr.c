
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_initiator_data {size_t r_nonce_len; int r_nonce; } ;


 size_t IKEV2_NONCE_MAX_LEN ;
 size_t IKEV2_NONCE_MIN_LEN ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int os_memcpy (int ,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int ,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ikev2_process_nr(struct ikev2_initiator_data *data,
       const u8 *nr, size_t nr_len)
{
 if (nr == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Nr not received");
  return -1;
 }

 if (nr_len < IKEV2_NONCE_MIN_LEN || nr_len > IKEV2_NONCE_MAX_LEN) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid Nr length %ld",
      (long) nr_len);
  return -1;
 }

 data->r_nonce_len = nr_len;
 os_memcpy(data->r_nonce, nr, nr_len);
 wpa_hexdump(MSG_MSGDUMP, "IKEV2: Nr",
      data->r_nonce, data->r_nonce_len);

 return 0;
}
