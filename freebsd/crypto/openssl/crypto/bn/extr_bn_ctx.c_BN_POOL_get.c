
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int used; int size; TYPE_1__* current; TYPE_1__* head; TYPE_1__* tail; } ;
struct TYPE_5__ {int * vals; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ BN_POOL_ITEM ;
typedef TYPE_2__ BN_POOL ;
typedef int BIGNUM ;


 int BN_CTX_POOL_SIZE ;
 int BN_FLG_SECURE ;
 int BN_F_BN_POOL_GET ;
 int BN_set_flags (int *,int) ;
 int BNerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int bn_init (int *) ;

__attribute__((used)) static BIGNUM *BN_POOL_get(BN_POOL *p, int flag)
{
    BIGNUM *bn;
    unsigned int loop;


    if (p->used == p->size) {
        BN_POOL_ITEM *item;

        if ((item = OPENSSL_malloc(sizeof(*item))) == ((void*)0)) {
            BNerr(BN_F_BN_POOL_GET, ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
        for (loop = 0, bn = item->vals; loop++ < BN_CTX_POOL_SIZE; bn++) {
            bn_init(bn);
            if ((flag & BN_FLG_SECURE) != 0)
                BN_set_flags(bn, BN_FLG_SECURE);
        }
        item->prev = p->tail;
        item->next = ((void*)0);

        if (p->head == ((void*)0))
            p->head = p->current = p->tail = item;
        else {
            p->tail->next = item;
            p->tail = item;
            p->current = item;
        }
        p->size += BN_CTX_POOL_SIZE;
        p->used++;

        return item->vals;
    }

    if (!p->used)
        p->current = p->head;
    else if ((p->used % BN_CTX_POOL_SIZE) == 0)
        p->current = p->current->next;
    return p->current->vals + ((p->used++) % BN_CTX_POOL_SIZE);
}
