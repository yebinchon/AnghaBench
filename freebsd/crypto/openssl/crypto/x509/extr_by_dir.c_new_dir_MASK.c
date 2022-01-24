#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* method_data; } ;
typedef  TYPE_1__ X509_LOOKUP ;
struct TYPE_7__ {int /*<<< orphan*/ * buffer; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * dirs; } ;
typedef  TYPE_2__ BY_DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  X509_F_NEW_DIR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(X509_LOOKUP *lu)
{
    BY_DIR *a = FUNC4(sizeof(*a));

    if (a == NULL) {
        FUNC5(X509_F_NEW_DIR, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if ((a->buffer = FUNC1()) == NULL) {
        FUNC5(X509_F_NEW_DIR, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    a->dirs = NULL;
    a->lock = FUNC2();
    if (a->lock == NULL) {
        FUNC0(a->buffer);
        FUNC5(X509_F_NEW_DIR, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    lu->method_data = a;
    return 1;

 err:
    FUNC3(a);
    return 0;
}