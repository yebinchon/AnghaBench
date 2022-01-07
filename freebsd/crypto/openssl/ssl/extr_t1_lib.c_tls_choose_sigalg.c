
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_30__ {int sig_idx; scalar_t__ sig; int curve; scalar_t__ const sigalg; } ;
struct TYPE_29__ {size_t shared_sigalgslen; TYPE_5__* s3; TYPE_2__* cert; scalar_t__ server; TYPE_7__** shared_sigalgs; } ;
struct TYPE_27__ {TYPE_7__ const* sigalg; TYPE_3__* cert; int * peer_sigalgs; TYPE_1__* new_cipher; } ;
struct TYPE_28__ {TYPE_4__ tmp; } ;
struct TYPE_26__ {int * privatekey; } ;
struct TYPE_25__ {TYPE_3__* key; TYPE_3__* pkeys; } ;
struct TYPE_24__ {int algorithm_auth; } ;
typedef TYPE_6__ SSL ;
typedef TYPE_7__ SIGALG_LOOKUP ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_GROUP_get_curve_name (int ) ;
 int EC_KEY_get0_group (int *) ;
 int ERR_R_INTERNAL_ERROR ;
 scalar_t__ EVP_PKEY_RSA_PSS ;
 int EVP_PKEY_get0 (int *) ;
 int * EVP_PKEY_get0_EC_KEY (int *) ;
 int SSL_AD_HANDSHAKE_FAILURE ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_TLS_CHOOSE_SIGALG ;
 scalar_t__ SSL_IS_TLS13 (TYPE_6__*) ;
 size_t SSL_PKEY_ECC ;
 int SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM ;
 int SSL_R_WRONG_SIGNATURE_TYPE ;
 scalar_t__ SSL_USE_SIGALGS (TYPE_6__*) ;
 int SSL_aCERT ;
 int SSLfatal (TYPE_6__*,int ,int ,int ) ;
 TYPE_7__* find_sig_alg (TYPE_6__*,int *,int *) ;
 scalar_t__ has_usable_cert (TYPE_6__*,TYPE_7__ const*,int) ;
 int rsa_pss_check_min_key_size (int ,TYPE_7__ const*) ;
 int ssl_has_cert (TYPE_6__*,int) ;
 int tls12_get_cert_sigalg_idx (TYPE_6__*,TYPE_7__ const*) ;
 size_t tls12_get_psigalgs (TYPE_6__*,int,scalar_t__ const**) ;
 TYPE_7__* tls1_get_legacy_sigalg (TYPE_6__*,int) ;
 scalar_t__ tls1_suiteb (TYPE_6__*) ;

int tls_choose_sigalg(SSL *s, int fatalerrs)
{
    const SIGALG_LOOKUP *lu = ((void*)0);
    int sig_idx = -1;

    s->s3->tmp.cert = ((void*)0);
    s->s3->tmp.sigalg = ((void*)0);

    if (SSL_IS_TLS13(s)) {
        lu = find_sig_alg(s, ((void*)0), ((void*)0));
        if (lu == ((void*)0)) {
            if (!fatalerrs)
                return 1;
            SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE, SSL_F_TLS_CHOOSE_SIGALG,
                     SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM);
            return 0;
        }
    } else {

        if (!(s->s3->tmp.new_cipher->algorithm_auth & SSL_aCERT))
            return 1;
        if (!s->server && !ssl_has_cert(s, s->cert->key - s->cert->pkeys))
                return 1;

        if (SSL_USE_SIGALGS(s)) {
            size_t i;
            if (s->s3->tmp.peer_sigalgs != ((void*)0)) {

                int curve;


                if (tls1_suiteb(s)) {
                    EC_KEY *ec = EVP_PKEY_get0_EC_KEY(s->cert->pkeys[SSL_PKEY_ECC].privatekey);
                    curve = EC_GROUP_get_curve_name(EC_KEY_get0_group(ec));
                } else {
                    curve = -1;
                }






                for (i = 0; i < s->shared_sigalgslen; i++) {
                    lu = s->shared_sigalgs[i];

                    if (s->server) {
                        if ((sig_idx = tls12_get_cert_sigalg_idx(s, lu)) == -1)
                            continue;
                    } else {
                        int cc_idx = s->cert->key - s->cert->pkeys;

                        sig_idx = lu->sig_idx;
                        if (cc_idx != sig_idx)
                            continue;
                    }

                    if (!has_usable_cert(s, lu, sig_idx))
                        continue;
                    if (lu->sig == EVP_PKEY_RSA_PSS) {

                        EVP_PKEY *pkey = s->cert->pkeys[sig_idx].privatekey;

                        if (!rsa_pss_check_min_key_size(EVP_PKEY_get0(pkey), lu))
                            continue;
                    }

                    if (curve == -1 || lu->curve == curve)

                        break;
                }
                if (i == s->shared_sigalgslen) {
                    if (!fatalerrs)
                        return 1;
                    SSLfatal(s, SSL_AD_HANDSHAKE_FAILURE,
                             SSL_F_TLS_CHOOSE_SIGALG,
                             SSL_R_NO_SUITABLE_SIGNATURE_ALGORITHM);
                    return 0;
                }
            } else {



                const uint16_t *sent_sigs;
                size_t sent_sigslen;

                if ((lu = tls1_get_legacy_sigalg(s, -1)) == ((void*)0)) {
                    if (!fatalerrs)
                        return 1;
                    SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CHOOSE_SIGALG,
                             ERR_R_INTERNAL_ERROR);
                    return 0;
                }


                sent_sigslen = tls12_get_psigalgs(s, 1, &sent_sigs);
                for (i = 0; i < sent_sigslen; i++, sent_sigs++) {
                    if (lu->sigalg == *sent_sigs
                            && has_usable_cert(s, lu, lu->sig_idx))
                        break;
                }
                if (i == sent_sigslen) {
                    if (!fatalerrs)
                        return 1;
                    SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER,
                             SSL_F_TLS_CHOOSE_SIGALG,
                             SSL_R_WRONG_SIGNATURE_TYPE);
                    return 0;
                }
            }
        } else {
            if ((lu = tls1_get_legacy_sigalg(s, -1)) == ((void*)0)) {
                if (!fatalerrs)
                    return 1;
                SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CHOOSE_SIGALG,
                         ERR_R_INTERNAL_ERROR);
                return 0;
            }
        }
    }
    if (sig_idx == -1)
        sig_idx = lu->sig_idx;
    s->s3->tmp.cert = &s->cert->pkeys[sig_idx];
    s->cert->key = s->s3->tmp.cert;
    s->s3->tmp.sigalg = lu;
    return 1;
}
