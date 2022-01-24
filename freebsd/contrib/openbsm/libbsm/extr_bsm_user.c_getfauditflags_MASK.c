#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ am_failure; scalar_t__ am_success; } ;
typedef  TYPE_1__ au_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  MAX_AUDITSTRING_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,TYPE_1__*) ; 

int
FUNC4(au_mask_t *usremask, au_mask_t *usrdmask, au_mask_t *lastmask)
{
	char auditstring[MAX_AUDITSTRING_LEN + 1];

	if ((usremask == NULL) || (usrdmask == NULL) || (lastmask == NULL))
		return (-1);

	lastmask->am_success = 0;
	lastmask->am_failure = 0;

	/* Get the system mask. */
	if (FUNC2(auditstring, MAX_AUDITSTRING_LEN) == 0) {
		if (FUNC3(auditstring, lastmask) != 0)
			return (-1);
	}

	FUNC0(lastmask, usremask);
	FUNC1(lastmask, usrdmask);

	return (0);
}