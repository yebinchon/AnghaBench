
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int check_ca (int *) ;
 int x509v3_cache_extensions (int *) ;

int X509_check_ca(X509 *x)
{
    x509v3_cache_extensions(x);

    return check_ca(x);
}
