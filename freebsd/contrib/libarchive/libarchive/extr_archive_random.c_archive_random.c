
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTPROV ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int CRYPT_NEWKEYSET ;
 int CRYPT_VERIFYCONTEXT ;
 scalar_t__ CryptAcquireContext (int *,int *,int *,int ,int ) ;
 scalar_t__ CryptGenRandom (int ,scalar_t__,int *) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ GetLastError () ;
 scalar_t__ NTE_BAD_KEYSET ;
 int PROV_RSA_FULL ;
 int arc4random_buf (void*,size_t) ;

int
archive_random(void *buf, size_t nbytes)
{
 arc4random_buf(buf, nbytes);
 return ARCHIVE_OK;

}
