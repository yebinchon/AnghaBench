
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int srp_Mask; } ;
struct TYPE_11__ {TYPE_3__* s3; TYPE_1__ srp_ctx; int psk_client_callback; } ;
struct TYPE_9__ {int mask_k; int mask_a; int max_ver; int min_ver; } ;
struct TYPE_10__ {TYPE_2__ tmp; } ;
typedef TYPE_4__ SSL ;


 int SSL_PSK ;
 int SSL_SECOP_SIGALG_MASK ;
 int SSL_aPSK ;
 int SSL_aSRP ;
 int SSL_kSRP ;
 scalar_t__ ssl_get_min_max_version (TYPE_4__*,int *,int *,int *) ;
 int ssl_set_sig_mask (int *,TYPE_4__*,int ) ;

int ssl_set_client_disabled(SSL *s)
{
    s->s3->tmp.mask_a = 0;
    s->s3->tmp.mask_k = 0;
    ssl_set_sig_mask(&s->s3->tmp.mask_a, s, SSL_SECOP_SIGALG_MASK);
    if (ssl_get_min_max_version(s, &s->s3->tmp.min_ver,
                                &s->s3->tmp.max_ver, ((void*)0)) != 0)
        return 0;


    if (!s->psk_client_callback) {
        s->s3->tmp.mask_a |= SSL_aPSK;
        s->s3->tmp.mask_k |= SSL_PSK;
    }


    if (!(s->srp_ctx.srp_Mask & SSL_kSRP)) {
        s->s3->tmp.mask_a |= SSL_aSRP;
        s->s3->tmp.mask_k |= SSL_kSRP;
    }

    return 1;
}
