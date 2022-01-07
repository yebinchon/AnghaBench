
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 scalar_t__ BN_hex2bn (int **,char const*) ;
 int DH_free (int *) ;
 int * DH_new () ;
 int DH_set0_pqg (int *,int *,int *,int *) ;

DH *
dh_new_group_asc(const char *gen, const char *modulus)
{
 DH *dh;
 BIGNUM *dh_p = ((void*)0), *dh_g = ((void*)0);

 if ((dh = DH_new()) == ((void*)0))
  return ((void*)0);
 if (BN_hex2bn(&dh_p, modulus) == 0 ||
     BN_hex2bn(&dh_g, gen) == 0)
  goto fail;
 if (!DH_set0_pqg(dh, dh_p, ((void*)0), dh_g))
  goto fail;
 return dh;
 fail:
 DH_free(dh);
 BN_clear_free(dh_p);
 BN_clear_free(dh_g);
 return ((void*)0);
}
