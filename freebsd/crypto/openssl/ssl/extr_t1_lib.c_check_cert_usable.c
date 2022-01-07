
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_11__ {int hash; int sig; } ;
struct TYPE_10__ {TYPE_2__* s3; } ;
struct TYPE_8__ {size_t peer_cert_sigalgslen; int * peer_cert_sigalgs; } ;
struct TYPE_9__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ SIGALG_LOOKUP ;
typedef int EVP_PKEY ;


 int ERR_pop_to_mark () ;
 int ERR_set_mark () ;
 int EVP_PKEY_get_default_digest_nid (int *,int*) ;
 int X509_get_signature_info (int *,int*,int*,int *,int *) ;
 TYPE_4__* tls1_lookup_sigalg (int ) ;

__attribute__((used)) static int check_cert_usable(SSL *s, const SIGALG_LOOKUP *sig, X509 *x,
                             EVP_PKEY *pkey)
{
    const SIGALG_LOOKUP *lu;
    int mdnid, pknid, default_mdnid;
    size_t i;


    ERR_set_mark();
    if (EVP_PKEY_get_default_digest_nid(pkey, &default_mdnid) == 2 &&
        sig->hash != default_mdnid)
            return 0;



    ERR_pop_to_mark();

    if (s->s3->tmp.peer_cert_sigalgs != ((void*)0)) {
        for (i = 0; i < s->s3->tmp.peer_cert_sigalgslen; i++) {
            lu = tls1_lookup_sigalg(s->s3->tmp.peer_cert_sigalgs[i]);
            if (lu == ((void*)0)
                || !X509_get_signature_info(x, &mdnid, &pknid, ((void*)0), ((void*)0)))
                continue;






            if (mdnid == lu->hash && pknid == lu->sig)
                return 1;
        }
        return 0;
    }
    return 1;
}
