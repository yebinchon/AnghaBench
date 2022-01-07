
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sign_id; int hash_id; int pkey_id; } ;
typedef TYPE_1__ nid_triple ;


 int ERR_R_MALLOC_FAILURE ;
 int OBJ_F_OBJ_ADD_SIGID ;
 int OBJerr (int ,int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * sig_app ;
 int sig_sk_cmp ;
 int * sigx_app ;
 int sigx_cmp ;
 int * sk_nid_triple_new (int ) ;
 int sk_nid_triple_push (int *,TYPE_1__*) ;
 int sk_nid_triple_sort (int *) ;

int OBJ_add_sigid(int signid, int dig_id, int pkey_id)
{
    nid_triple *ntr;
    if (sig_app == ((void*)0))
        sig_app = sk_nid_triple_new(sig_sk_cmp);
    if (sig_app == ((void*)0))
        return 0;
    if (sigx_app == ((void*)0))
        sigx_app = sk_nid_triple_new(sigx_cmp);
    if (sigx_app == ((void*)0))
        return 0;
    if ((ntr = OPENSSL_malloc(sizeof(*ntr))) == ((void*)0)) {
        OBJerr(OBJ_F_OBJ_ADD_SIGID, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    ntr->sign_id = signid;
    ntr->hash_id = dig_id;
    ntr->pkey_id = pkey_id;

    if (!sk_nid_triple_push(sig_app, ntr)) {
        OPENSSL_free(ntr);
        return 0;
    }

    if (!sk_nid_triple_push(sigx_app, ntr))
        return 0;

    sk_nid_triple_sort(sig_app);
    sk_nid_triple_sort(sigx_app);

    return 1;
}
