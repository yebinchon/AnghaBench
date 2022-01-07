
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesni_session {scalar_t__ auth_algo; int hmac_key; } ;


 scalar_t__ CRYPTO_SHA1 ;
 int EINVAL ;
 int memcpy (int ,void const*,int) ;

__attribute__((used)) static int
aesni_authprepare(struct aesni_session *ses, int klen, const void *cri_key)
{
 int keylen;

 if (klen % 8 != 0)
  return (EINVAL);
 keylen = klen / 8;
 if (keylen > sizeof(ses->hmac_key))
  return (EINVAL);
 if (ses->auth_algo == CRYPTO_SHA1 && keylen > 0)
  return (EINVAL);
 memcpy(ses->hmac_key, cri_key, keylen);
 return (0);
}
