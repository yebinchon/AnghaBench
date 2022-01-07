
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int up_load; int num_items; int num_nodes; int num_replace; int num_insert; scalar_t__ error; } ;
struct TYPE_8__ {unsigned long hash; void* data; int * next; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef TYPE_2__ OPENSSL_LHASH ;


 int LH_LOAD_MULT ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int expand (TYPE_2__*) ;
 TYPE_1__** getrn (TYPE_2__*,void*,unsigned long*) ;

void *OPENSSL_LH_insert(OPENSSL_LHASH *lh, void *data)
{
    unsigned long hash;
    OPENSSL_LH_NODE *nn, **rn;
    void *ret;

    lh->error = 0;
    if ((lh->up_load <= (lh->num_items * LH_LOAD_MULT / lh->num_nodes)) && !expand(lh))
        return ((void*)0);

    rn = getrn(lh, data, &hash);

    if (*rn == ((void*)0)) {
        if ((nn = OPENSSL_malloc(sizeof(*nn))) == ((void*)0)) {
            lh->error++;
            return ((void*)0);
        }
        nn->data = data;
        nn->next = ((void*)0);
        nn->hash = hash;
        *rn = nn;
        ret = ((void*)0);
        lh->num_insert++;
        lh->num_items++;
    } else {
        ret = (*rn)->data;
        (*rn)->data = data;
        lh->num_replace++;
    }
    return ret;
}
