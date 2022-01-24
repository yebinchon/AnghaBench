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
typedef  int /*<<< orphan*/  dtrace_id_t ;
struct TYPE_2__ {scalar_t__ sy_return; scalar_t__ sy_entry; } ;

/* Variables and functions */
 TYPE_1__* SYSENT ; 
 int FUNC0 (uintptr_t) ; 
 int systrace_enabled ; 
 scalar_t__ systrace_enabled_count ; 

__attribute__((used)) static void
FUNC1(void *arg, dtrace_id_t id, void *parg)
{
	int sysnum = FUNC0((uintptr_t)parg);

	SYSENT[sysnum].sy_entry = 0;
	SYSENT[sysnum].sy_return = 0;
	systrace_enabled_count--;
	if (systrace_enabled_count == 0)
		systrace_enabled = false;
}