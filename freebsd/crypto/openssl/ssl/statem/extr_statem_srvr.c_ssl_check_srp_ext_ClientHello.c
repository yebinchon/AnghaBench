
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * login; int * TLS_ext_srp_username_callback; } ;
struct TYPE_13__ {TYPE_4__ srp_ctx; TYPE_3__* s3; } ;
struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; } ;
struct TYPE_9__ {int algorithm_mkey; } ;
typedef TYPE_5__ SSL ;


 int SSL3_AL_FATAL ;
 int SSL_AD_UNKNOWN_PSK_IDENTITY ;
 int SSL_AD_UNRECOGNIZED_NAME ;
 int SSL_F_SSL_CHECK_SRP_EXT_CLIENTHELLO ;
 int SSL_R_CLIENTHELLO_TLSEXT ;
 int SSL_R_PSK_IDENTITY_NOT_FOUND ;
 int SSL_kSRP ;
 int SSL_srp_server_param_with_username (TYPE_5__*,int*) ;
 int SSLfatal (TYPE_5__*,int,int ,int ) ;

__attribute__((used)) static int ssl_check_srp_ext_ClientHello(SSL *s)
{
    int ret;
    int al = SSL_AD_UNRECOGNIZED_NAME;

    if ((s->s3->tmp.new_cipher->algorithm_mkey & SSL_kSRP) &&
        (s->srp_ctx.TLS_ext_srp_username_callback != ((void*)0))) {
        if (s->srp_ctx.login == ((void*)0)) {




            SSLfatal(s, SSL_AD_UNKNOWN_PSK_IDENTITY,
                     SSL_F_SSL_CHECK_SRP_EXT_CLIENTHELLO,
                     SSL_R_PSK_IDENTITY_NOT_FOUND);
            return -1;
        } else {
            ret = SSL_srp_server_param_with_username(s, &al);
            if (ret < 0)
                return 0;
            if (ret == SSL3_AL_FATAL) {
                SSLfatal(s, al, SSL_F_SSL_CHECK_SRP_EXT_CLIENTHELLO,
                         al == SSL_AD_UNKNOWN_PSK_IDENTITY
                         ? SSL_R_PSK_IDENTITY_NOT_FOUND
                         : SSL_R_CLIENTHELLO_TLSEXT);
                return -1;
            }
        }
    }
    return 1;
}
