#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct eap_sm {scalar_t__ changed; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(struct eap_sm *sm)
{
	int res = 0;
	do {
		sm->changed = FALSE;
		FUNC0(EAP);
		if (sm->changed)
			res = 1;
	} while (sm->changed);
	return res;
}