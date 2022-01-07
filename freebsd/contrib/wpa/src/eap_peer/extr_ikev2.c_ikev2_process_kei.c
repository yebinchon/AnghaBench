
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef long u16 ;
struct TYPE_3__ {long dh; } ;
struct ikev2_responder_data {int * i_dh_public; TYPE_2__* dh; int state; int error_type; TYPE_1__ proposal; } ;
struct TYPE_4__ {size_t prime_len; } ;


 int INVALID_KE_PAYLOAD ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int NOTIFY ;
 long WPA_GET_BE16 (int const*) ;
 int wpa_hexdump_buf (int ,char*,int *) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc (size_t) ;
 int wpabuf_free (int *) ;
 int wpabuf_put_data (int *,int const*,size_t) ;

__attribute__((used)) static int ikev2_process_kei(struct ikev2_responder_data *data,
        const u8 *kei, size_t kei_len)
{
 u16 group;
 if (kei == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: KEi not received");
  return -1;
 }

 if (kei_len < 4 + 96) {
  wpa_printf(MSG_INFO, "IKEV2: Too short Key Exchange Payload");
  return -1;
 }

 group = WPA_GET_BE16(kei);
 wpa_printf(MSG_DEBUG, "IKEV2: KEi DH Group #%u", group);

 if (group != data->proposal.dh) {
  wpa_printf(MSG_DEBUG, "IKEV2: KEi DH Group #%u does not match "
      "with the selected proposal (%u)",
      group, data->proposal.dh);


  data->error_type = INVALID_KE_PAYLOAD;
  data->state = NOTIFY;
  return -1;
 }

 if (data->dh == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported DH group");
  return -1;
 }





 if (kei_len - 4 != data->dh->prime_len) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid DH public value length "
      "%ld (expected %ld)",
      (long) (kei_len - 4), (long) data->dh->prime_len);
  return -1;
 }

 wpabuf_free(data->i_dh_public);
 data->i_dh_public = wpabuf_alloc(kei_len - 4);
 if (data->i_dh_public == ((void*)0))
  return -1;
 wpabuf_put_data(data->i_dh_public, kei + 4, kei_len - 4);

 wpa_hexdump_buf(MSG_DEBUG, "IKEV2: KEi Diffie-Hellman Public Value",
   data->i_dh_public);

 return 0;
}
