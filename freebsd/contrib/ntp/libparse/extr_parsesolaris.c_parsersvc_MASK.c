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
typedef  int /*<<< orphan*/  queue_t ;
struct TYPE_7__ {TYPE_1__* b_datap; } ;
typedef  TYPE_2__ mblk_t ;
struct TYPE_6__ {scalar_t__ db_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD_RSVC ; 
 scalar_t__ QPCTL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(
	  queue_t *q
	  )
{
	mblk_t *mp;

	while ((mp = FUNC1(q)))
	{
		if (FUNC0(q) || (mp->b_datap->db_type > QPCTL))
		{
			FUNC4(q, mp);
			FUNC2(DD_RSVC, "parse: RSVC - putnext\n");
		}
		else
		{
			FUNC3(q, mp);
			FUNC2(DD_RSVC, "parse: RSVC - flow control wait\n");
			break;
		}
	}
	return 0;
}