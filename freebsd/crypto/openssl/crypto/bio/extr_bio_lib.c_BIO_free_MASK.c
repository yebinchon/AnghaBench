#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  ex_data; TYPE_1__* method; int /*<<< orphan*/ * callback_ex; int /*<<< orphan*/ * callback; int /*<<< orphan*/  references; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* destroy ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CB_FREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_BIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

int FUNC8(BIO *a)
{
    int ret;

    if (a == NULL)
        return 0;

    if (FUNC0(&a->references, &ret, a->lock) <= 0)
        return 0;

    FUNC5("BIO", a);
    if (ret > 0)
        return 1;
    FUNC4(ret < 0);

    if (a->callback != NULL || a->callback_ex != NULL) {
        ret = (int)FUNC6(a, BIO_CB_FREE, NULL, 0, 0, 0L, 1L, NULL);
        if (ret <= 0)
            return ret;
    }

    if ((a->method != NULL) && (a->method->destroy != NULL))
        a->method->destroy(a);

    FUNC2(CRYPTO_EX_INDEX_BIO, a, &a->ex_data);

    FUNC1(a->lock);

    FUNC3(a);

    return 1;
}