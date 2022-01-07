
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STRING ;


 int OPENSSL_free (char*) ;

__attribute__((used)) static void exts_cleanup(OPENSSL_STRING *x)
{
    OPENSSL_free((char *)x);
}
