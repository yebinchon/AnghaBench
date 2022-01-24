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
struct ssh {TYPE_1__* kex; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** newkeys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct ssh *ssh, int mode)
{
	if (ssh->kex && ssh->kex->newkeys[mode]) {
		FUNC0(ssh->kex->newkeys[mode]);
		ssh->kex->newkeys[mode] = NULL;
	}
}