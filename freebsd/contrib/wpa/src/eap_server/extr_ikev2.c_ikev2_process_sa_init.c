
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_payloads {int encr_next_payload; int encrypted_len; scalar_t__ encrypted; int nonce_len; int nonce; int ke_len; int ke; int sa_len; int sa; } ;
struct ikev2_initiator_data {int state; int r_spi; } ;
struct ikev2_hdr {int r_spi; } ;


 int IKEV2_SPI_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SA_AUTH ;
 scalar_t__ ikev2_derive_keys (struct ikev2_initiator_data*) ;
 scalar_t__ ikev2_process_ker (struct ikev2_initiator_data*,int ,int ) ;
 scalar_t__ ikev2_process_nr (struct ikev2_initiator_data*,int ,int ) ;
 scalar_t__ ikev2_process_sa_init_encr (struct ikev2_initiator_data*,struct ikev2_hdr const*,scalar_t__,int ,int ) ;
 scalar_t__ ikev2_process_sar1 (struct ikev2_initiator_data*,int ,int ) ;
 int os_memcpy (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ikev2_process_sa_init(struct ikev2_initiator_data *data,
     const struct ikev2_hdr *hdr,
     struct ikev2_payloads *pl)
{
 if (ikev2_process_sar1(data, pl->sa, pl->sa_len) < 0 ||
     ikev2_process_ker(data, pl->ke, pl->ke_len) < 0 ||
     ikev2_process_nr(data, pl->nonce, pl->nonce_len) < 0)
  return -1;

 os_memcpy(data->r_spi, hdr->r_spi, IKEV2_SPI_LEN);

 if (ikev2_derive_keys(data) < 0)
  return -1;

 if (pl->encrypted) {
  wpa_printf(MSG_DEBUG, "IKEV2: Encrypted payload in SA_INIT - "
      "try to get IDr from it");
  if (ikev2_process_sa_init_encr(data, hdr, pl->encrypted,
            pl->encrypted_len,
            pl->encr_next_payload) < 0) {
   wpa_printf(MSG_INFO, "IKEV2: Failed to process "
       "encrypted payload");
   return -1;
  }
 }

 data->state = SA_AUTH;

 return 0;
}
