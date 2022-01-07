
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTPROV ;


 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptGenRandom (int ,size_t,void*) ;
 int CryptReleaseContext (int ,int ) ;
 int EIO ;
 int PROV_RSA_FULL ;
 int errno ;

int
getentropy(void *buf, size_t len)
{
 HCRYPTPROV provider;

 if (len > 256) {
  errno = EIO;
  return -1;
 }

 if (CryptAcquireContext(&provider, ((void*)0), ((void*)0), PROV_RSA_FULL,
     CRYPT_VERIFYCONTEXT) == 0)
  goto fail;
 if (CryptGenRandom(provider, len, buf) == 0) {
  CryptReleaseContext(provider, 0);
  goto fail;
 }
 CryptReleaseContext(provider, 0);
 return (0);

fail:
 errno = EIO;
 return (-1);
}
