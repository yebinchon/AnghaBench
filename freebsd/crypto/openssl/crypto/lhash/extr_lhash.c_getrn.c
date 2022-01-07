
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned long (* hash ) (void const*) ;unsigned long pmax; unsigned long p; unsigned long num_alloc_nodes; scalar_t__ (* comp ) (int ,void const*) ;int num_comp_calls; int num_hash_comps; TYPE_1__** b; int num_hash_calls; } ;
struct TYPE_5__ {unsigned long hash; struct TYPE_5__* next; int data; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef scalar_t__ (* OPENSSL_LH_COMPFUNC ) (int ,void const*) ;
typedef TYPE_2__ OPENSSL_LHASH ;


 unsigned long stub1 (void const*) ;
 int tsan_counter (int *) ;

__attribute__((used)) static OPENSSL_LH_NODE **getrn(OPENSSL_LHASH *lh,
                               const void *data, unsigned long *rhash)
{
    OPENSSL_LH_NODE **ret, *n1;
    unsigned long hash, nn;
    OPENSSL_LH_COMPFUNC cf;

    hash = (*(lh->hash)) (data);
    tsan_counter(&lh->num_hash_calls);
    *rhash = hash;

    nn = hash % lh->pmax;
    if (nn < lh->p)
        nn = hash % lh->num_alloc_nodes;

    cf = lh->comp;
    ret = &(lh->b[(int)nn]);
    for (n1 = *ret; n1 != ((void*)0); n1 = n1->next) {
        tsan_counter(&lh->num_hash_comps);
        if (n1->hash != hash) {
            ret = &(n1->next);
            continue;
        }
        tsan_counter(&lh->num_comp_calls);
        if (cf(n1->data, data) == 0)
            break;
        ret = &(n1->next);
    }
    return ret;
}
