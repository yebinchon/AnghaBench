
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct TYPE_2__ {scalar_t__ dh; scalar_t__ ec; } ;


 scalar_t__ sae_derive_commit (struct sae_data*) ;
 scalar_t__ sae_derive_pwe_ecc (struct sae_data*,int const*,int const*,int const*,size_t,char const*) ;
 scalar_t__ sae_derive_pwe_ffc (struct sae_data*,int const*,int const*,int const*,size_t,char const*) ;

int sae_prepare_commit(const u8 *addr1, const u8 *addr2,
         const u8 *password, size_t password_len,
         const char *identifier, struct sae_data *sae)
{
 if (sae->tmp == ((void*)0) ||
     (sae->tmp->ec && sae_derive_pwe_ecc(sae, addr1, addr2, password,
      password_len,
      identifier) < 0) ||
     (sae->tmp->dh && sae_derive_pwe_ffc(sae, addr1, addr2, password,
      password_len,
      identifier) < 0) ||
     sae_derive_commit(sae) < 0)
  return -1;
 return 0;
}
