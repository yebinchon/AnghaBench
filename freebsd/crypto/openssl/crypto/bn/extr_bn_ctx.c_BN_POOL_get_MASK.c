#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int used; int size; TYPE_1__* current; TYPE_1__* head; TYPE_1__* tail; } ;
struct TYPE_5__ {int /*<<< orphan*/ * vals; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ BN_POOL_ITEM ;
typedef  TYPE_2__ BN_POOL ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int BN_CTX_POOL_SIZE ; 
 int BN_FLG_SECURE ; 
 int /*<<< orphan*/  BN_F_BN_POOL_GET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BIGNUM *FUNC4(BN_POOL *p, int flag)
{
    BIGNUM *bn;
    unsigned int loop;

    /* Full; allocate a new pool item and link it in. */
    if (p->used == p->size) {
        BN_POOL_ITEM *item;

        if ((item = FUNC2(sizeof(*item))) == NULL) {
            FUNC1(BN_F_BN_POOL_GET, ERR_R_MALLOC_FAILURE);
            return NULL;
        }
        for (loop = 0, bn = item->vals; loop++ < BN_CTX_POOL_SIZE; bn++) {
            FUNC3(bn);
            if ((flag & BN_FLG_SECURE) != 0)
                FUNC0(bn, BN_FLG_SECURE);
        }
        item->prev = p->tail;
        item->next = NULL;

        if (p->head == NULL)
            p->head = p->current = p->tail = item;
        else {
            p->tail->next = item;
            p->tail = item;
            p->current = item;
        }
        p->size += BN_CTX_POOL_SIZE;
        p->used++;
        /* Return the first bignum from the new pool */
        return item->vals;
    }

    if (!p->used)
        p->current = p->head;
    else if ((p->used % BN_CTX_POOL_SIZE) == 0)
        p->current = p->current->next;
    return p->current->vals + ((p->used++) % BN_CTX_POOL_SIZE);
}