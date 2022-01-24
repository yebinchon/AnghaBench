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
struct TYPE_3__ {int /*<<< orphan*/  match; int /*<<< orphan*/ * eku; } ;
typedef  TYPE_1__ hx509_query ;
typedef  int /*<<< orphan*/  heim_oid ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_EKU ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(hx509_query *q, const heim_oid *eku)
{
    int ret;

    if (eku == NULL) {
	if (q->eku) {
	    FUNC2(q->eku);
	    FUNC3(q->eku);
	    q->eku = NULL;
	}
	q->match &= ~HX509_QUERY_MATCH_EKU;
    } else {
	if (q->eku) {
	    FUNC2(q->eku);
	} else {
	    q->eku = FUNC0(1, sizeof(*q->eku));
	    if (q->eku == NULL)
		return ENOMEM;
	}
	ret = FUNC1(eku, q->eku);
	if (ret) {
	    FUNC3(q->eku);
	    q->eku = NULL;
	    return ret;
	}
	q->match |= HX509_QUERY_MATCH_EKU;
    }
    return 0;
}