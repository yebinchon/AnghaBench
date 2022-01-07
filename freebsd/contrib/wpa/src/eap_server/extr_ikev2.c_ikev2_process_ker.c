
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef long u16 ;
struct TYPE_3__ {long dh; } ;
struct ikev2_initiator_data {int * r_dh_public; TYPE_2__* dh; TYPE_1__ proposal; } ;
struct TYPE_4__ {size_t prime_len; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 long WPA_GET_BE16 (int const*) ;
 int wpa_hexdump_buf (int ,char*,int *) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc_copy (int const*,size_t) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static int ikev2_process_ker(struct ikev2_initiator_data *data,
        const u8 *ker, size_t ker_len)
{
 u16 group;
 if (ker == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: KEr not received");
  return -1;
 }

 if (ker_len < 4 + 96) {
  wpa_printf(MSG_INFO, "IKEV2: Too show Key Exchange Payload");
  return -1;
 }

 group = WPA_GET_BE16(ker);
 wpa_printf(MSG_DEBUG, "IKEV2: KEr DH Group #%u", group);

 if (group != data->proposal.dh) {
  wpa_printf(MSG_DEBUG, "IKEV2: KEr DH Group #%u does not match "
      "with the selected proposal (%u)",
      group, data->proposal.dh);
  return -1;
 }

 if (data->dh == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported DH group");
  return -1;
 }





 if (ker_len - 4 != data->dh->prime_len) {
  wpa_printf(MSG_INFO, "IKEV2: Invalid DH public value length "
      "%ld (expected %ld)",
      (long) (ker_len - 4), (long) data->dh->prime_len);
  return -1;
 }

 wpabuf_free(data->r_dh_public);
 data->r_dh_public = wpabuf_alloc_copy(ker + 4, ker_len - 4);
 if (data->r_dh_public == ((void*)0))
  return -1;

 wpa_hexdump_buf(MSG_DEBUG, "IKEV2: KEr Diffie-Hellman Public Value",
   data->r_dh_public);

 return 0;
}
