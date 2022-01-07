
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int integ; int encr; } ;
struct ikev2_responder_data {int keys; TYPE_1__ proposal; } ;
struct ikev2_payloads {int encr_next_payload; int encrypted_len; int encrypted; } ;
struct ikev2_hdr {int dummy; } ;


 int * ikev2_decrypt_payload (int ,int ,int *,int,struct ikev2_hdr const*,int ,int ,size_t*) ;
 int ikev2_process_sa_auth_decrypted (struct ikev2_responder_data*,int ,int *,size_t) ;
 int os_free (int *) ;

__attribute__((used)) static int ikev2_process_sa_auth(struct ikev2_responder_data *data,
     const struct ikev2_hdr *hdr,
     struct ikev2_payloads *pl)
{
 u8 *decrypted;
 size_t decrypted_len;
 int ret;

 decrypted = ikev2_decrypt_payload(data->proposal.encr,
       data->proposal.integ,
       &data->keys, 1, hdr, pl->encrypted,
       pl->encrypted_len, &decrypted_len);
 if (decrypted == ((void*)0))
  return -1;

 ret = ikev2_process_sa_auth_decrypted(data, pl->encr_next_payload,
           decrypted, decrypted_len);
 os_free(decrypted);

 return ret;
}
