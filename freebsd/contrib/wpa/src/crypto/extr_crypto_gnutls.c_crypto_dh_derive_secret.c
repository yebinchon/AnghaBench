
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int * gcry_mpi_t ;


 int GCRYMPI_FMT_USG ;
 scalar_t__ GPG_ERR_NO_ERROR ;
 int crypto_mod_exp (int const*,size_t,int const*,size_t,int const*,size_t,int *,size_t*) ;
 scalar_t__ gcry_mpi_cmp_ui (int *,int) ;
 int * gcry_mpi_new (size_t) ;
 int gcry_mpi_powm (int *,int *,int *,int *) ;
 int gcry_mpi_release (int *) ;
 scalar_t__ gcry_mpi_scan (int **,int ,int const*,size_t,int *) ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;

int crypto_dh_derive_secret(u8 generator, const u8 *prime, size_t prime_len,
       const u8 *order, size_t order_len,
       const u8 *privkey, size_t privkey_len,
       const u8 *pubkey, size_t pubkey_len,
       u8 *secret, size_t *len)
{
 gcry_mpi_t pub = ((void*)0);
 int res = -1;

 if (pubkey_len > prime_len ||
     (pubkey_len == prime_len &&
      os_memcmp(pubkey, prime, prime_len) >= 0))
  return -1;

 if (gcry_mpi_scan(&pub, GCRYMPI_FMT_USG, pubkey, pubkey_len, ((void*)0)) !=
     GPG_ERR_NO_ERROR ||
     gcry_mpi_cmp_ui(pub, 1) <= 0)
  goto fail;

 if (order) {
  gcry_mpi_t p = ((void*)0), q = ((void*)0), tmp;
  int failed;


  tmp = gcry_mpi_new(prime_len * 8);
  failed = !tmp ||
   gcry_mpi_scan(&p, GCRYMPI_FMT_USG, prime, prime_len,
          ((void*)0)) != GPG_ERR_NO_ERROR ||
   gcry_mpi_scan(&q, GCRYMPI_FMT_USG, order, order_len,
          ((void*)0)) != GPG_ERR_NO_ERROR;
  if (!failed) {
   gcry_mpi_powm(tmp, pub, q, p);
   failed = gcry_mpi_cmp_ui(tmp, 1) != 0;
  }
  gcry_mpi_release(p);
  gcry_mpi_release(q);
  gcry_mpi_release(tmp);
  if (failed)
   goto fail;
 }

 res = crypto_mod_exp(pubkey, pubkey_len, privkey, privkey_len,
        prime, prime_len, secret, len);
fail:
 gcry_mpi_release(pub);
 return res;
}
