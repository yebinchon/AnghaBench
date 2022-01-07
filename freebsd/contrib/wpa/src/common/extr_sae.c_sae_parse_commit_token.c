
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct TYPE_2__ {int prime_len; scalar_t__ ec; } ;


 int MSG_DEBUG ;
 size_t SHA256_MAC_LEN ;
 scalar_t__ sae_is_password_id_elem (scalar_t__ const*,scalar_t__ const*) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*,unsigned int) ;

__attribute__((used)) static void sae_parse_commit_token(struct sae_data *sae, const u8 **pos,
       const u8 *end, const u8 **token,
       size_t *token_len)
{
 size_t scalar_elem_len, tlen;
 const u8 *elem;

 if (token)
  *token = ((void*)0);
 if (token_len)
  *token_len = 0;

 scalar_elem_len = (sae->tmp->ec ? 3 : 2) * sae->tmp->prime_len;
 if (scalar_elem_len >= (size_t) (end - *pos))
  return;
 tlen = end - (*pos + scalar_elem_len);

 if (tlen < SHA256_MAC_LEN) {
  wpa_printf(MSG_DEBUG,
      "SAE: Too short optional data (%u octets) to include our Anti-Clogging Token",
      (unsigned int) tlen);
  return;
 }

 elem = *pos + scalar_elem_len;
 if (sae_is_password_id_elem(elem, end)) {



  return;
 }

 elem += SHA256_MAC_LEN;
 if (sae_is_password_id_elem(elem, end)) {


  tlen -= 2 + elem[1];
 }

 wpa_hexdump(MSG_DEBUG, "SAE: Anti-Clogging Token", *pos, tlen);
 if (token)
  *token = *pos;
 if (token_len)
  *token_len = tlen;
 *pos += tlen;
}
