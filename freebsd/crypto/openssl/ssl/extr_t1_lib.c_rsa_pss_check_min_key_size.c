
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIGALG_LOOKUP ;
typedef int RSA ;
typedef int EVP_MD ;


 scalar_t__ RSA_PSS_MINIMUM_KEY_SIZE (int const*) ;
 scalar_t__ RSA_size (int const*) ;
 int tls1_lookup_md (int const*,int const**) ;

__attribute__((used)) static int rsa_pss_check_min_key_size(const RSA *rsa, const SIGALG_LOOKUP *lu)
{
    const EVP_MD *md;

    if (rsa == ((void*)0))
        return 0;
    if (!tls1_lookup_md(lu, &md) || md == ((void*)0))
        return 0;
    if (RSA_size(rsa) < RSA_PSS_MINIMUM_KEY_SIZE(md))
        return 0;
    return 1;
}
