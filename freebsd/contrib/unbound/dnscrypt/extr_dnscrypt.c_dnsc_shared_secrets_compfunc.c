
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNSCRYPT_SHARED_SECRET_KEY_LENGTH ;
 int sodium_memcmp (void*,void*,int ) ;

int
dnsc_shared_secrets_compfunc(void *m1, void *m2)
{
    return sodium_memcmp(m1, m2, DNSCRYPT_SHARED_SECRET_KEY_LENGTH);
}
