
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sae_temporary_data {int pw_id; int anti_clogging_token; int peer_commit_element_ecc; int own_commit_element_ecc; int pwe_ecc; int peer_commit_element_ffc; int own_commit_element_ffc; int own_commit_scalar; int pwe_ffc; int sae_rand; int order_buf; int prime_buf; int ec; } ;
struct sae_data {struct sae_temporary_data* tmp; } ;


 int bin_clear_free (struct sae_temporary_data*,int) ;
 int crypto_bignum_deinit (int ,int) ;
 int crypto_ec_deinit (int ) ;
 int crypto_ec_point_deinit (int ,int) ;
 int os_free (int ) ;
 int wpabuf_free (int ) ;

void sae_clear_temp_data(struct sae_data *sae)
{
 struct sae_temporary_data *tmp;
 if (sae == ((void*)0) || sae->tmp == ((void*)0))
  return;
 tmp = sae->tmp;
 crypto_ec_deinit(tmp->ec);
 crypto_bignum_deinit(tmp->prime_buf, 0);
 crypto_bignum_deinit(tmp->order_buf, 0);
 crypto_bignum_deinit(tmp->sae_rand, 1);
 crypto_bignum_deinit(tmp->pwe_ffc, 1);
 crypto_bignum_deinit(tmp->own_commit_scalar, 0);
 crypto_bignum_deinit(tmp->own_commit_element_ffc, 0);
 crypto_bignum_deinit(tmp->peer_commit_element_ffc, 0);
 crypto_ec_point_deinit(tmp->pwe_ecc, 1);
 crypto_ec_point_deinit(tmp->own_commit_element_ecc, 0);
 crypto_ec_point_deinit(tmp->peer_commit_element_ecc, 0);
 wpabuf_free(tmp->anti_clogging_token);
 os_free(tmp->pw_id);
 bin_clear_free(tmp, sizeof(*tmp));
 sae->tmp = ((void*)0);
}
