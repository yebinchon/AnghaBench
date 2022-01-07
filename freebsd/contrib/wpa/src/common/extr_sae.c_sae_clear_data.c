
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sae_data {int peer_commit_scalar; } ;


 int crypto_bignum_deinit (int ,int ) ;
 int os_memset (struct sae_data*,int ,int) ;
 int sae_clear_temp_data (struct sae_data*) ;

void sae_clear_data(struct sae_data *sae)
{
 if (sae == ((void*)0))
  return;
 sae_clear_temp_data(sae);
 crypto_bignum_deinit(sae->peer_commit_scalar, 0);
 os_memset(sae, 0, sizeof(*sae));
}
