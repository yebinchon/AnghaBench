
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ TLS_VERSION_1_2 ;
 int tls_prf_sha1_md5 (int const*,size_t,char const*,int const*,size_t,int *,size_t) ;
 int tls_prf_sha256 (int const*,size_t,char const*,int const*,size_t,int *,size_t) ;

int tls_prf(u16 ver, const u8 *secret, size_t secret_len, const char *label,
     const u8 *seed, size_t seed_len, u8 *out, size_t outlen)
{
 return tls_prf_sha1_md5(secret, secret_len, label, seed, seed_len, out,
    outlen);
}
