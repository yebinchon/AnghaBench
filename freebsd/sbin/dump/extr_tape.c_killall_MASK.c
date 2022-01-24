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
struct TYPE_2__ {scalar_t__ pid; scalar_t__ sent; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int SLAVES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* slaves ; 

void
FUNC1(void)
{
	int i;

	for (i = 0; i < SLAVES; i++)
		if (slaves[i].pid > 0) {
			(void) FUNC0(slaves[i].pid, SIGKILL);
			slaves[i].sent = 0;
		}
}