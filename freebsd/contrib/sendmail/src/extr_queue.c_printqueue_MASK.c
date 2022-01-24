#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int qg_numqueues; } ;

/* Variables and functions */
 int NumQueue ; 
 TYPE_1__** Queue ; 
 int /*<<< orphan*/  SM_TIME_DEFAULT ; 
 scalar_t__ StopRequest ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  smioout ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3()
{
	int i, k = 0, nrequests = 0;

	for (i = 0; i < NumQueue && Queue[i] != NULL; i++)
	{
		int j;

		k++;
		for (j = 0; j < Queue[i]->qg_numqueues; j++)
		{
			if (StopRequest)
				FUNC2();
			nrequests += FUNC0(i, j);
			k++;
		}
	}
	if (k > 1)
		(void) FUNC1(smioout, SM_TIME_DEFAULT,
				     "\t\tTotal requests: %d\n",
				     nrequests);
}