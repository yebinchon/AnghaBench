#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* init ) (TYPE_1__*) ;} ;
struct TYPE_9__ {int references; TYPE_3__* meth; int /*<<< orphan*/ * meth_data; int /*<<< orphan*/ * lock; } ;
typedef  int /*<<< orphan*/  DSO_METHOD ;
typedef  TYPE_1__ DSO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  DSO_F_DSO_NEW_METHOD ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 
 TYPE_3__* default_DSO_meth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static DSO *FUNC9(DSO_METHOD *meth)
{
    DSO *ret;

    if (default_DSO_meth == NULL) {
        /*
         * We default to DSO_METH_openssl() which in turn defaults to
         * stealing the "best available" method. Will fallback to
         * DSO_METH_null() in the worst case.
         */
        default_DSO_meth = FUNC1();
    }
    ret = FUNC5(sizeof(*ret));
    if (ret == NULL) {
        FUNC3(DSO_F_DSO_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    ret->meth_data = FUNC7();
    if (ret->meth_data == NULL) {
        /* sk_new doesn't generate any errors so we do */
        FUNC3(DSO_F_DSO_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        FUNC4(ret);
        return NULL;
    }
    ret->meth = default_DSO_meth;
    ret->references = 1;
    ret->lock = FUNC0();
    if (ret->lock == NULL) {
        FUNC3(DSO_F_DSO_NEW_METHOD, ERR_R_MALLOC_FAILURE);
        FUNC6(ret->meth_data);
        FUNC4(ret);
        return NULL;
    }

    if ((ret->meth->init != NULL) && !ret->meth->init(ret)) {
        FUNC2(ret);
        ret = NULL;
    }

    return ret;
}