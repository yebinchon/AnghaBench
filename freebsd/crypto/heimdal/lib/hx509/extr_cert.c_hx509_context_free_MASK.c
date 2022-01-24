#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* hx509_context ;
struct TYPE_6__ {struct TYPE_6__* querystat; int /*<<< orphan*/  et_list; scalar_t__ ks_num_ops; struct TYPE_6__* ks_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(hx509_context *context)
{
    FUNC2(*context);
    if ((*context)->ks_ops) {
	FUNC0((*context)->ks_ops);
	(*context)->ks_ops = NULL;
    }
    (*context)->ks_num_ops = 0;
    FUNC1 ((*context)->et_list);
    if ((*context)->querystat)
	FUNC0((*context)->querystat);
    FUNC3(*context, 0, sizeof(**context));
    FUNC0(*context);
    *context = NULL;
}