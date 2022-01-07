
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int g; int N; } ;
struct TYPE_6__ {int * v; int * s; void* g; void* N; } ;
struct TYPE_7__ {TYPE_1__ srp_ctx; } ;
typedef TYPE_2__ SSL ;
typedef TYPE_3__ SRP_gN ;


 int BN_clear_free (int *) ;
 void* BN_dup (int ) ;
 int SRP_create_verifier_BN (char const*,char const*,int **,int **,int ,int ) ;
 TYPE_3__* SRP_get_default_gN (char const*) ;

int SSL_set_srp_server_param_pw(SSL *s, const char *user, const char *pass,
                                const char *grp)
{
    SRP_gN *GN = SRP_get_default_gN(grp);
    if (GN == ((void*)0))
        return -1;
    s->srp_ctx.N = BN_dup(GN->N);
    s->srp_ctx.g = BN_dup(GN->g);
    BN_clear_free(s->srp_ctx.v);
    s->srp_ctx.v = ((void*)0);
    BN_clear_free(s->srp_ctx.s);
    s->srp_ctx.s = ((void*)0);
    if (!SRP_create_verifier_BN
        (user, pass, &s->srp_ctx.s, &s->srp_ctx.v, GN->N, GN->g))
        return -1;

    return 1;
}
