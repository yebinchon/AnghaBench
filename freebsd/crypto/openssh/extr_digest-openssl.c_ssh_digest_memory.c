
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int u_char ;
struct ssh_digest {size_t digest_len; int (* mdfunc ) () ;} ;


 int EVP_Digest (void const*,size_t,int *,size_t*,int ,int *) ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 size_t UINT_MAX ;
 struct ssh_digest* ssh_digest_by_alg (int) ;
 int stub1 () ;

int
ssh_digest_memory(int alg, const void *m, size_t mlen, u_char *d, size_t dlen)
{
 const struct ssh_digest *digest = ssh_digest_by_alg(alg);
 u_int mdlen;

 if (digest == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 if (dlen > UINT_MAX)
  return SSH_ERR_INVALID_ARGUMENT;
 if (dlen < digest->digest_len)
  return SSH_ERR_INVALID_ARGUMENT;
 mdlen = dlen;
 if (!EVP_Digest(m, mlen, d, &mdlen, digest->mdfunc(), ((void*)0)))
  return SSH_ERR_LIBCRYPTO_ERROR;
 return 0;
}
