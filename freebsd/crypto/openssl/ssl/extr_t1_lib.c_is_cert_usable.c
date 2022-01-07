
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int sig_idx; } ;
typedef int SSL ;
typedef TYPE_1__ SIGALG_LOOKUP ;
typedef int EVP_PKEY ;


 int check_cert_usable (int *,TYPE_1__ const*,int *,int *) ;
 int * ssl_cert_lookup_by_pkey (int *,size_t*) ;

__attribute__((used)) static int is_cert_usable(SSL *s, const SIGALG_LOOKUP *sig, X509 *x,
                          EVP_PKEY *pkey)
{
    size_t idx;

    if (ssl_cert_lookup_by_pkey(pkey, &idx) == ((void*)0))
        return 0;


    if ((int)idx != sig->sig_idx)
        return 0;

    return check_cert_usable(s, sig, x, pkey);
}
