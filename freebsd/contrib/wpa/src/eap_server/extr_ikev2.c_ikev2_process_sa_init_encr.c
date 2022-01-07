
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ikev2_payloads {int idr_len; scalar_t__ idr; } ;
struct TYPE_2__ {int integ; int encr; } ;
struct ikev2_initiator_data {int keys; TYPE_1__ proposal; } ;
struct ikev2_hdr {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int * ikev2_decrypt_payload (int ,int ,int *,int ,struct ikev2_hdr const*,int const*,size_t,size_t*) ;
 scalar_t__ ikev2_parse_payloads (struct ikev2_payloads*,int ,int *,int *) ;
 int ikev2_process_idr (struct ikev2_initiator_data*,scalar_t__,int ) ;
 int os_free (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ikev2_process_sa_init_encr(struct ikev2_initiator_data *data,
          const struct ikev2_hdr *hdr,
          const u8 *encrypted,
          size_t encrypted_len, u8 next_payload)
{
 u8 *decrypted;
 size_t decrypted_len;
 struct ikev2_payloads pl;
 int ret = 0;

 decrypted = ikev2_decrypt_payload(data->proposal.encr,
       data->proposal.integ, &data->keys, 0,
       hdr, encrypted, encrypted_len,
       &decrypted_len);
 if (decrypted == ((void*)0))
  return -1;

 wpa_printf(MSG_DEBUG, "IKEV2: Processing decrypted payloads");

 if (ikev2_parse_payloads(&pl, next_payload, decrypted,
     decrypted + decrypted_len) < 0) {
  wpa_printf(MSG_INFO, "IKEV2: Failed to parse decrypted "
      "payloads");
  return -1;
 }

 if (pl.idr)
  ret = ikev2_process_idr(data, pl.idr, pl.idr_len);

 os_free(decrypted);

 return ret;
}
