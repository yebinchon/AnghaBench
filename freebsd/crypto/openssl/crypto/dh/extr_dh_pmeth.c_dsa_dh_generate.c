
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prime_len; int subprime_len; int use_dsa; int * md; } ;
typedef int EVP_MD ;
typedef int DSA ;
typedef TYPE_1__ DH_PKEY_CTX ;
typedef int BN_GENCB ;


 int DSA_free (int *) ;
 int * DSA_new () ;
 int * EVP_sha1 () ;
 int * EVP_sha256 () ;
 int dsa_builtin_paramgen (int *,int,int,int const*,int *,int ,int *,int *,int *,int *) ;
 int dsa_builtin_paramgen2 (int *,int,int,int const*,int *,int ,int,int *,int *,int *,int *) ;

__attribute__((used)) static DSA *dsa_dh_generate(DH_PKEY_CTX *dctx, BN_GENCB *pcb)
{
    DSA *ret;
    int rv = 0;
    int prime_len = dctx->prime_len;
    int subprime_len = dctx->subprime_len;
    const EVP_MD *md = dctx->md;
    if (dctx->use_dsa > 2)
        return ((void*)0);
    ret = DSA_new();
    if (ret == ((void*)0))
        return ((void*)0);
    if (subprime_len == -1) {
        if (prime_len >= 2048)
            subprime_len = 256;
        else
            subprime_len = 160;
    }
    if (md == ((void*)0)) {
        if (prime_len >= 2048)
            md = EVP_sha256();
        else
            md = EVP_sha1();
    }
    if (dctx->use_dsa == 1)
        rv = dsa_builtin_paramgen(ret, prime_len, subprime_len, md,
                                  ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), pcb);
    else if (dctx->use_dsa == 2)
        rv = dsa_builtin_paramgen2(ret, prime_len, subprime_len, md,
                                   ((void*)0), 0, -1, ((void*)0), ((void*)0), ((void*)0), pcb);
    if (rv <= 0) {
        DSA_free(ret);
        return ((void*)0);
    }
    return ret;
}
