#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * sk; } ;
struct TYPE_13__ {int /*<<< orphan*/  argp; int /*<<< orphan*/  argl; int /*<<< orphan*/  (* new_func ) (void*,void*,TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  meth; } ;
typedef  TYPE_1__ EX_CALLBACKS ;
typedef  TYPE_2__ EX_CALLBACK ;
typedef  TYPE_3__ CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_CRYPTO_NEW_EX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**) ; 
 TYPE_2__** FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/  ex_data_lock ; 
 TYPE_1__* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(int class_index, void *obj, CRYPTO_EX_DATA *ad)
{
    int mx, i;
    void *ptr;
    EX_CALLBACK **storage = NULL;
    EX_CALLBACK *stack[10];
    EX_CALLBACKS *ip = FUNC6(class_index);

    if (ip == NULL)
        return 0;

    ad->sk = NULL;

    mx = FUNC7(ip->meth);
    if (mx > 0) {
        if (mx < (int)FUNC5(stack))
            storage = stack;
        else
            storage = FUNC4(sizeof(*storage) * mx);
        if (storage != NULL)
            for (i = 0; i < mx; i++)
                storage[i] = FUNC8(ip->meth, i);
    }
    FUNC0(ex_data_lock);

    if (mx > 0 && storage == NULL) {
        FUNC2(CRYPTO_F_CRYPTO_NEW_EX_DATA, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0; i < mx; i++) {
        if (storage[i] && storage[i]->new_func) {
            ptr = FUNC1(ad, i);
            storage[i]->new_func(obj, ptr, ad, i,
                                 storage[i]->argl, storage[i]->argp);
        }
    }
    if (storage != stack)
        FUNC3(storage);
    return 1;
}