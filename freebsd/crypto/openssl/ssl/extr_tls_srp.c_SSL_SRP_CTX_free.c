
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strength; int v; int b; int a; int A; int B; int s; int g; int N; int info; int login; } ;
struct ssl_st {TYPE_1__ srp_ctx; } ;


 int BN_free (int ) ;
 int OPENSSL_free (int ) ;
 int SRP_MINIMAL_N ;
 int memset (TYPE_1__*,int ,int) ;

int SSL_SRP_CTX_free(struct ssl_st *s)
{
    if (s == ((void*)0))
        return 0;
    OPENSSL_free(s->srp_ctx.login);
    OPENSSL_free(s->srp_ctx.info);
    BN_free(s->srp_ctx.N);
    BN_free(s->srp_ctx.g);
    BN_free(s->srp_ctx.s);
    BN_free(s->srp_ctx.B);
    BN_free(s->srp_ctx.A);
    BN_free(s->srp_ctx.a);
    BN_free(s->srp_ctx.b);
    BN_free(s->srp_ctx.v);
    memset(&s->srp_ctx, 0, sizeof(s->srp_ctx));
    s->srp_ctx.strength = SRP_MINIMAL_N;
    return 1;
}
