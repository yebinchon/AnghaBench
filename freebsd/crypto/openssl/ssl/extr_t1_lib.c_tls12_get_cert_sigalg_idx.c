
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int sig_idx; } ;
struct TYPE_14__ {TYPE_3__* s3; } ;
struct TYPE_13__ {int amask; scalar_t__ nid; } ;
struct TYPE_11__ {int* valid_flags; TYPE_1__* new_cipher; } ;
struct TYPE_12__ {TYPE_2__ tmp; } ;
struct TYPE_10__ {int algorithm_auth; int algorithm_mkey; } ;
typedef TYPE_4__ SSL_CERT_LOOKUP ;
typedef TYPE_5__ SSL ;
typedef TYPE_6__ SIGALG_LOOKUP ;


 int CERT_PKEY_VALID ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 int SSL_kRSA ;
 TYPE_4__* ssl_cert_lookup_by_idx (int) ;

__attribute__((used)) static int tls12_get_cert_sigalg_idx(const SSL *s, const SIGALG_LOOKUP *lu)
{
    int sig_idx = lu->sig_idx;
    const SSL_CERT_LOOKUP *clu = ssl_cert_lookup_by_idx(sig_idx);


    if (clu == ((void*)0)
            || (clu->amask & s->s3->tmp.new_cipher->algorithm_auth) == 0
            || (clu->nid == EVP_PKEY_RSA_PSS
                && (s->s3->tmp.new_cipher->algorithm_mkey & SSL_kRSA) != 0))
        return -1;

    return s->s3->tmp.valid_flags[sig_idx] & CERT_PKEY_VALID ? sig_idx : -1;
}
