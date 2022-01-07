
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int * gcry_mpi_t ;


 int GCRYMPI_FMT_USG ;
 scalar_t__ GPG_ERR_NO_ERROR ;
 int * gcry_mpi_new (size_t) ;
 int gcry_mpi_powm (int *,int *,int *,int *) ;
 scalar_t__ gcry_mpi_print (int ,int *,size_t,size_t*,int *) ;
 int gcry_mpi_release (int *) ;
 scalar_t__ gcry_mpi_scan (int **,int ,int const*,size_t,int *) ;

int crypto_mod_exp(const u8 *base, size_t base_len,
     const u8 *power, size_t power_len,
     const u8 *modulus, size_t modulus_len,
     u8 *result, size_t *result_len)
{
 gcry_mpi_t bn_base = ((void*)0), bn_exp = ((void*)0), bn_modulus = ((void*)0),
  bn_result = ((void*)0);
 int ret = -1;

 if (gcry_mpi_scan(&bn_base, GCRYMPI_FMT_USG, base, base_len, ((void*)0)) !=
     GPG_ERR_NO_ERROR ||
     gcry_mpi_scan(&bn_exp, GCRYMPI_FMT_USG, power, power_len, ((void*)0)) !=
     GPG_ERR_NO_ERROR ||
     gcry_mpi_scan(&bn_modulus, GCRYMPI_FMT_USG, modulus, modulus_len,
     ((void*)0)) != GPG_ERR_NO_ERROR)
  goto error;
 bn_result = gcry_mpi_new(modulus_len * 8);

 gcry_mpi_powm(bn_result, bn_base, bn_exp, bn_modulus);

 if (gcry_mpi_print(GCRYMPI_FMT_USG, result, *result_len, result_len,
      bn_result) != GPG_ERR_NO_ERROR)
  goto error;

 ret = 0;

error:
 gcry_mpi_release(bn_base);
 gcry_mpi_release(bn_exp);
 gcry_mpi_release(bn_modulus);
 gcry_mpi_release(bn_result);
 return ret;
}
