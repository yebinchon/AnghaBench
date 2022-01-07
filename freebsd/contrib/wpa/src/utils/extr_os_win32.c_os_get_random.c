
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTPROV ;
typedef scalar_t__ BOOL ;


 int CRYPT_VERIFYCONTEXT ;
 int CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptGenRandom (int ,size_t,unsigned char*) ;
 int CryptReleaseContext (int ,int ) ;
 int PROV_RSA_FULL ;

int os_get_random(unsigned char *buf, size_t len)
{
 HCRYPTPROV prov;
 BOOL ret;

 if (!CryptAcquireContext(&prov, ((void*)0), ((void*)0), PROV_RSA_FULL,
     CRYPT_VERIFYCONTEXT))
  return -1;

 ret = CryptGenRandom(prov, len, buf);
 CryptReleaseContext(prov, 0);

 return ret ? 0 : -1;
}
