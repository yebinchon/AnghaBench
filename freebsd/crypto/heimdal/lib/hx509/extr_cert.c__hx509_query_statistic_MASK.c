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
struct TYPE_5__ {int match; } ;
typedef  TYPE_1__ hx509_query ;
typedef  TYPE_2__* hx509_context ;
struct TYPE_6__ {int /*<<< orphan*/ * querystat; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(hx509_context context, int type, const hx509_query *q)
{
    FILE *f;
    if (context->querystat == NULL)
	return;
    f = FUNC1(context->querystat, "a");
    if (f == NULL)
	return;
    FUNC3(f);
    FUNC2(f, "%d %d\n", type, q->match);
    FUNC0(f);
}