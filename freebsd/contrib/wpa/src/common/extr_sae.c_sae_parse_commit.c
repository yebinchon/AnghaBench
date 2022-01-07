
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sae_data {TYPE_1__* tmp; int peer_commit_scalar; } ;
struct TYPE_2__ {int peer_commit_element_ecc; int own_commit_element_ecc; scalar_t__ ec; int peer_commit_element_ffc; int own_commit_element_ffc; scalar_t__ dh; int own_commit_scalar; } ;


 scalar_t__ SAE_SILENTLY_DISCARD ;
 scalar_t__ WLAN_STATUS_SUCCESS ;
 scalar_t__ WLAN_STATUS_UNSPECIFIED_FAILURE ;
 int WPA_GET_LE16 (int const*) ;
 scalar_t__ crypto_bignum_cmp (int ,int ) ;
 scalar_t__ crypto_ec_point_cmp (scalar_t__,int ,int ) ;
 scalar_t__ sae_group_allowed (struct sae_data*,int*,int ) ;
 scalar_t__ sae_parse_commit_element (struct sae_data*,int const**,int const*) ;
 scalar_t__ sae_parse_commit_scalar (struct sae_data*,int const**,int const*) ;
 int sae_parse_commit_token (struct sae_data*,int const**,int const*,int const**,size_t*) ;
 scalar_t__ sae_parse_password_identifier (struct sae_data*,int const*,int const*) ;

u16 sae_parse_commit(struct sae_data *sae, const u8 *data, size_t len,
       const u8 **token, size_t *token_len, int *allowed_groups)
{
 const u8 *pos = data, *end = data + len;
 u16 res;


 if (end - pos < 2)
  return WLAN_STATUS_UNSPECIFIED_FAILURE;
 res = sae_group_allowed(sae, allowed_groups, WPA_GET_LE16(pos));
 if (res != WLAN_STATUS_SUCCESS)
  return res;
 pos += 2;


 sae_parse_commit_token(sae, &pos, end, token, token_len);


 res = sae_parse_commit_scalar(sae, &pos, end);
 if (res != WLAN_STATUS_SUCCESS)
  return res;


 res = sae_parse_commit_element(sae, &pos, end);
 if (res != WLAN_STATUS_SUCCESS)
  return res;


 res = sae_parse_password_identifier(sae, pos, end);
 if (res != WLAN_STATUS_SUCCESS)
  return res;





 if (!sae->tmp->own_commit_scalar ||
     crypto_bignum_cmp(sae->tmp->own_commit_scalar,
         sae->peer_commit_scalar) != 0 ||
     (sae->tmp->dh &&
      (!sae->tmp->own_commit_element_ffc ||
       crypto_bignum_cmp(sae->tmp->own_commit_element_ffc,
    sae->tmp->peer_commit_element_ffc) != 0)) ||
     (sae->tmp->ec &&
      (!sae->tmp->own_commit_element_ecc ||
       crypto_ec_point_cmp(sae->tmp->ec,
      sae->tmp->own_commit_element_ecc,
      sae->tmp->peer_commit_element_ecc) != 0)))
  return WLAN_STATUS_SUCCESS;






 return SAE_SILENTLY_DISCARD;
}
