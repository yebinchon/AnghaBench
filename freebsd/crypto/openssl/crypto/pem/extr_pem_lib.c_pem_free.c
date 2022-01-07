
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENSSL_free (void*) ;
 int OPENSSL_secure_clear_free (void*,size_t) ;
 unsigned int PEM_FLAG_SECURE ;

__attribute__((used)) static void pem_free(void *p, unsigned int flags, size_t num)
{
    if (flags & PEM_FLAG_SECURE)
        OPENSSL_secure_clear_free(p, num);
    else
        OPENSSL_free(p);
}
