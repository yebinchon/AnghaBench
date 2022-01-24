#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  stack; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_CTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 TYPE_1__* FUNC3 (int) ; 

BN_CTX *FUNC4(void)
{
    BN_CTX *ret;

    if ((ret = FUNC3(sizeof(*ret))) == NULL) {
        FUNC2(BN_F_BN_CTX_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }
    /* Initialise the structure */
    FUNC0(&ret->pool);
    FUNC1(&ret->stack);
    return ret;
}