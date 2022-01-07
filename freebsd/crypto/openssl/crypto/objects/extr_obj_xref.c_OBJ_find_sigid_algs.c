
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sign_id; int hash_id; int pkey_id; } ;
typedef TYPE_1__ nid_triple ;


 TYPE_1__* OBJ_bsearch_sig (TYPE_1__*,int ,int ) ;
 int OSSL_NELEM (int ) ;
 int * sig_app ;
 int sigoid_srt ;
 int sk_nid_triple_find (int *,TYPE_1__*) ;
 TYPE_1__* sk_nid_triple_value (int *,int) ;

int OBJ_find_sigid_algs(int signid, int *pdig_nid, int *ppkey_nid)
{
    nid_triple tmp;
    const nid_triple *rv = ((void*)0);
    tmp.sign_id = signid;

    if (sig_app != ((void*)0)) {
        int idx = sk_nid_triple_find(sig_app, &tmp);
        rv = sk_nid_triple_value(sig_app, idx);
    }

    if (rv == ((void*)0)) {
        rv = OBJ_bsearch_sig(&tmp, sigoid_srt, OSSL_NELEM(sigoid_srt));
    }

    if (rv == ((void*)0))
        return 0;
    if (pdig_nid)
        *pdig_nid = rv->hash_id;
    if (ppkey_nid)
        *ppkey_nid = rv->pkey_id;
    return 1;
}
