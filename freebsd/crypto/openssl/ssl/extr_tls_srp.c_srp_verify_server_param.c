
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ strength; scalar_t__ (* SRP_verify_param_callback ) (TYPE_1__*,int ) ;int N; int g; int SRP_cb_arg; int B; } ;
struct TYPE_6__ {TYPE_2__ srp_ctx; } ;
typedef TYPE_1__ SSL ;
typedef TYPE_2__ SRP_CTX ;


 scalar_t__ BN_is_zero (int ) ;
 scalar_t__ BN_num_bits (int ) ;
 scalar_t__ BN_ucmp (int ,int ) ;
 int SRP_check_known_gN_param (int ,int ) ;
 int SSL_AD_ILLEGAL_PARAMETER ;
 int SSL_AD_INSUFFICIENT_SECURITY ;
 int SSL_F_SRP_VERIFY_SERVER_PARAM ;
 int SSL_R_BAD_DATA ;
 int SSL_R_CALLBACK_FAILED ;
 int SSL_R_INSUFFICIENT_SECURITY ;
 int SSLfatal (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ stub1 (TYPE_1__*,int ) ;

int srp_verify_server_param(SSL *s)
{
    SRP_CTX *srp = &s->srp_ctx;




    if (BN_ucmp(srp->g, srp->N) >= 0 || BN_ucmp(srp->B, srp->N) >= 0
        || BN_is_zero(srp->B)) {
        SSLfatal(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_SRP_VERIFY_SERVER_PARAM,
                 SSL_R_BAD_DATA);
        return 0;
    }

    if (BN_num_bits(srp->N) < srp->strength) {
        SSLfatal(s, SSL_AD_INSUFFICIENT_SECURITY, SSL_F_SRP_VERIFY_SERVER_PARAM,
                 SSL_R_INSUFFICIENT_SECURITY);
        return 0;
    }

    if (srp->SRP_verify_param_callback) {
        if (srp->SRP_verify_param_callback(s, srp->SRP_cb_arg) <= 0) {
            SSLfatal(s, SSL_AD_INSUFFICIENT_SECURITY,
                     SSL_F_SRP_VERIFY_SERVER_PARAM,
                     SSL_R_CALLBACK_FAILED);
            return 0;
        }
    } else if (!SRP_check_known_gN_param(srp->g, srp->N)) {
        SSLfatal(s, SSL_AD_INSUFFICIENT_SECURITY, SSL_F_SRP_VERIFY_SERVER_PARAM,
                 SSL_R_INSUFFICIENT_SECURITY);
        return 0;
    }

    return 1;
}
