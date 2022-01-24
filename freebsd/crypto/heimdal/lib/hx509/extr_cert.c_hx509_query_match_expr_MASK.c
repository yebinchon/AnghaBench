#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  match; int /*<<< orphan*/ * expr; } ;
typedef  TYPE_1__ hx509_query ;
typedef  int /*<<< orphan*/  hx509_context ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_QUERY_MATCH_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int
FUNC2(hx509_context context, hx509_query *q, const char *expr)
{
    if (q->expr) {
	FUNC0(q->expr);
	q->expr = NULL;
    }

    if (expr == NULL) {
	q->match &= ~HX509_QUERY_MATCH_EXPR;
    } else {
	q->expr = FUNC1(expr);
	if (q->expr)
	    q->match |= HX509_QUERY_MATCH_EXPR;
    }

    return 0;
}