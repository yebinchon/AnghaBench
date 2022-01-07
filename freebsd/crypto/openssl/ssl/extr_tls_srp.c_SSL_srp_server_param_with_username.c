
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int b ;
struct TYPE_5__ {int (* TLS_ext_srp_username_callback ) (TYPE_2__*,int*,int ) ;int * v; int * g; int * N; int b; int * B; int * s; int SRP_cb_arg; } ;
struct TYPE_6__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;


 int BN_bin2bn (unsigned char*,int,int *) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 scalar_t__ RAND_priv_bytes (unsigned char*,int) ;
 int * SRP_Calc_B (int ,int *,int *,int *) ;
 int SSL3_AL_FATAL ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_AD_UNKNOWN_PSK_IDENTITY ;
 int SSL_ERROR_NONE ;
 int SSL_MAX_MASTER_KEY_LENGTH ;
 int stub1 (TYPE_2__*,int*,int ) ;

int SSL_srp_server_param_with_username(SSL *s, int *ad)
{
    unsigned char b[SSL_MAX_MASTER_KEY_LENGTH];
    int al;

    *ad = SSL_AD_UNKNOWN_PSK_IDENTITY;
    if ((s->srp_ctx.TLS_ext_srp_username_callback != ((void*)0)) &&
        ((al =
          s->srp_ctx.TLS_ext_srp_username_callback(s, ad,
                                                   s->srp_ctx.SRP_cb_arg)) !=
         SSL_ERROR_NONE))
        return al;

    *ad = SSL_AD_INTERNAL_ERROR;
    if ((s->srp_ctx.N == ((void*)0)) ||
        (s->srp_ctx.g == ((void*)0)) ||
        (s->srp_ctx.s == ((void*)0)) || (s->srp_ctx.v == ((void*)0)))
        return SSL3_AL_FATAL;

    if (RAND_priv_bytes(b, sizeof(b)) <= 0)
        return SSL3_AL_FATAL;
    s->srp_ctx.b = BN_bin2bn(b, sizeof(b), ((void*)0));
    OPENSSL_cleanse(b, sizeof(b));



    return ((s->srp_ctx.B =
             SRP_Calc_B(s->srp_ctx.b, s->srp_ctx.N, s->srp_ctx.g,
                        s->srp_ctx.v)) !=
            ((void*)0)) ? SSL_ERROR_NONE : SSL3_AL_FATAL;
}
