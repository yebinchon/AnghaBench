#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * sk; } ;
struct TYPE_16__ {int /*<<< orphan*/  argp; int /*<<< orphan*/  argl; int /*<<< orphan*/  (* dup_func ) (TYPE_3__ const*,TYPE_3__ const*,void**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  meth; } ;
typedef  TYPE_1__ EX_CALLBACKS ;
typedef  TYPE_2__ EX_CALLBACK ;
typedef  TYPE_3__ const CRYPTO_EX_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_F_CRYPTO_DUP_EX_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (TYPE_3__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 TYPE_2__** FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_2__**) ; 
 int /*<<< orphan*/  ex_data_lock ; 
 TYPE_1__* FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__ const*,TYPE_3__ const*,void**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(int class_index, CRYPTO_EX_DATA *to,
                       const CRYPTO_EX_DATA *from)
{
    int mx, j, i;
    void *ptr;
    EX_CALLBACK *stack[10];
    EX_CALLBACK **storage = NULL;
    EX_CALLBACKS *ip;
    int toret = 0;

    if (from->sk == NULL)
        /* Nothing to copy over */
        return 1;
    if ((ip = FUNC7(class_index)) == NULL)
        return 0;

    mx = FUNC8(ip->meth);
    j = FUNC10(from->sk);
    if (j < mx)
        mx = j;
    if (mx > 0) {
        if (mx < (int)FUNC6(stack))
            storage = stack;
        else
            storage = FUNC5(sizeof(*storage) * mx);
        if (storage != NULL)
            for (i = 0; i < mx; i++)
                storage[i] = FUNC9(ip->meth, i);
    }
    FUNC0(ex_data_lock);

    if (mx == 0)
        return 1;
    if (storage == NULL) {
        FUNC3(CRYPTO_F_CRYPTO_DUP_EX_DATA, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    /*
     * Make sure the ex_data stack is at least |mx| elements long to avoid
     * issues in the for loop that follows; so go get the |mx|'th element
     * (if it does not exist CRYPTO_get_ex_data() returns NULL), and assign
     * to itself. This is normally a no-op; but ensures the stack is the
     * proper size
     */
    if (!FUNC2(to, mx - 1, FUNC1(to, mx - 1)))
        goto err;

    for (i = 0; i < mx; i++) {
        ptr = FUNC1(from, i);
        if (storage[i] && storage[i]->dup_func)
            if (!storage[i]->dup_func(to, from, &ptr, i,
                                      storage[i]->argl, storage[i]->argp))
                goto err;
        FUNC2(to, i, ptr);
    }
    toret = 1;
 err:
    if (storage != stack)
        FUNC4(storage);
    return toret;
}