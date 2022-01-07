
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int tls_prf_sha256 (int const*,size_t,char const*,int const*,size_t,int *,size_t) ;

__attribute__((used)) static int eap_teap_tls_prf(const u8 *secret, size_t secret_len,
       const char *label, const u8 *seed, size_t seed_len,
       u8 *out, size_t outlen)
{

 return tls_prf_sha256(secret, secret_len, label, seed, seed_len,
         out, outlen);
}
