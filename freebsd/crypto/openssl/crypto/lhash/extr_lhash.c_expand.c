
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned int num_alloc_nodes; unsigned int p; unsigned int pmax; TYPE_1__** b; int num_expands; int num_nodes; int num_expand_reallocs; int error; } ;
struct TYPE_7__ {unsigned long hash; struct TYPE_7__* next; } ;
typedef TYPE_1__ OPENSSL_LH_NODE ;
typedef TYPE_2__ OPENSSL_LHASH ;


 TYPE_1__** OPENSSL_realloc (TYPE_1__**,int) ;
 int memset (TYPE_1__**,int ,int) ;

__attribute__((used)) static int expand(OPENSSL_LHASH *lh)
{
    OPENSSL_LH_NODE **n, **n1, **n2, *np;
    unsigned int p, pmax, nni, j;
    unsigned long hash;

    nni = lh->num_alloc_nodes;
    p = lh->p;
    pmax = lh->pmax;
    if (p + 1 >= pmax) {
        j = nni * 2;
        n = OPENSSL_realloc(lh->b, sizeof(OPENSSL_LH_NODE *) * j);
        if (n == ((void*)0)) {
            lh->error++;
            return 0;
        }
        lh->b = n;
        memset(n + nni, 0, sizeof(*n) * (j - nni));
        lh->pmax = nni;
        lh->num_alloc_nodes = j;
        lh->num_expand_reallocs++;
        lh->p = 0;
    } else {
        lh->p++;
    }

    lh->num_nodes++;
    lh->num_expands++;
    n1 = &(lh->b[p]);
    n2 = &(lh->b[p + pmax]);
    *n2 = ((void*)0);

    for (np = *n1; np != ((void*)0);) {
        hash = np->hash;
        if ((hash % nni) != p) {
            *n1 = (*n1)->next;
            np->next = *n2;
            *n2 = np;
        } else
            n1 = &((*n1)->next);
        np = *n1;
    }

    return 1;
}
