
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ALGOR ;
typedef int EVP_MD ;


 scalar_t__ EVP_MD_type (int const*) ;
 scalar_t__ NID_sha1 ;
 int * X509_ALGOR_new () ;
 int X509_ALGOR_set_md (int *,int const*) ;

__attribute__((used)) static int rsa_md_to_algor(X509_ALGOR **palg, const EVP_MD *md)
{
    if (md == ((void*)0) || EVP_MD_type(md) == NID_sha1)
        return 1;
    *palg = X509_ALGOR_new();
    if (*palg == ((void*)0))
        return 0;
    X509_ALGOR_set_md(*palg, md);
    return 1;
}
