
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * v; int * s; int * g; int * N; int * info; } ;
struct TYPE_5__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;
typedef int const BIGNUM ;


 int BN_copy (int *,int const*) ;
 void* BN_dup (int const*) ;
 int BN_free (int *) ;
 int * BUF_strdup (char*) ;
 int OPENSSL_free (int *) ;

int SSL_set_srp_server_param(SSL *s, const BIGNUM *N, const BIGNUM *g,
                             BIGNUM *sa, BIGNUM *v, char *info)
{
    if (N != ((void*)0)) {
        if (s->srp_ctx.N != ((void*)0)) {
            if (!BN_copy(s->srp_ctx.N, N)) {
                BN_free(s->srp_ctx.N);
                s->srp_ctx.N = ((void*)0);
            }
        } else
            s->srp_ctx.N = BN_dup(N);
    }
    if (g != ((void*)0)) {
        if (s->srp_ctx.g != ((void*)0)) {
            if (!BN_copy(s->srp_ctx.g, g)) {
                BN_free(s->srp_ctx.g);
                s->srp_ctx.g = ((void*)0);
            }
        } else
            s->srp_ctx.g = BN_dup(g);
    }
    if (sa != ((void*)0)) {
        if (s->srp_ctx.s != ((void*)0)) {
            if (!BN_copy(s->srp_ctx.s, sa)) {
                BN_free(s->srp_ctx.s);
                s->srp_ctx.s = ((void*)0);
            }
        } else
            s->srp_ctx.s = BN_dup(sa);
    }
    if (v != ((void*)0)) {
        if (s->srp_ctx.v != ((void*)0)) {
            if (!BN_copy(s->srp_ctx.v, v)) {
                BN_free(s->srp_ctx.v);
                s->srp_ctx.v = ((void*)0);
            }
        } else
            s->srp_ctx.v = BN_dup(v);
    }
    if (info != ((void*)0)) {
        if (s->srp_ctx.info)
            OPENSSL_free(s->srp_ctx.info);
        if ((s->srp_ctx.info = BUF_strdup(info)) == ((void*)0))
            return -1;
    }

    if (!(s->srp_ctx.N) ||
        !(s->srp_ctx.g) || !(s->srp_ctx.s) || !(s->srp_ctx.v))
        return -1;

    return 1;
}
