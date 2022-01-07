
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ikev2_responder_data {int i_spi; } ;
struct ikev2_payloads {int nonce_len; int nonce; int ke_len; int ke; int sa_len; int sa; } ;
struct ikev2_hdr {int i_spi; } ;


 int IKEV2_SPI_LEN ;
 scalar_t__ ikev2_process_kei (struct ikev2_responder_data*,int ,int ) ;
 scalar_t__ ikev2_process_ni (struct ikev2_responder_data*,int ,int ) ;
 scalar_t__ ikev2_process_sai1 (struct ikev2_responder_data*,int ,int ) ;
 int os_memcpy (int ,int ,int ) ;

__attribute__((used)) static int ikev2_process_sa_init(struct ikev2_responder_data *data,
     const struct ikev2_hdr *hdr,
     struct ikev2_payloads *pl)
{
 if (ikev2_process_sai1(data, pl->sa, pl->sa_len) < 0 ||
     ikev2_process_kei(data, pl->ke, pl->ke_len) < 0 ||
     ikev2_process_ni(data, pl->nonce, pl->nonce_len) < 0)
  return -1;

 os_memcpy(data->i_spi, hdr->i_spi, IKEV2_SPI_LEN);

 return 0;
}
