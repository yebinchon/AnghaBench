#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_5__ {int /*<<< orphan*/  certs; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(hx509_context context, hx509_lock *lock)
{
    hx509_lock l;
    int ret;

    *lock = NULL;

    l = FUNC0(1, sizeof(*l));
    if (l == NULL)
	return ENOMEM;

    ret = FUNC2(context,
			   "MEMORY:locks-internal",
			   0,
			   NULL,
			   &l->certs);
    if (ret) {
	FUNC1(l);
	return ret;
    }

    *lock = l;

    return 0;
}