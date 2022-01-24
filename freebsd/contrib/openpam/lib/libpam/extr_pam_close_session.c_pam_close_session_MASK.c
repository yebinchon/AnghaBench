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
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PAM_BAD_CONSTANT ; 
 int PAM_SILENT ; 
 int /*<<< orphan*/  PAM_SM_CLOSE_SESSION ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC3(pam_handle_t *pamh,
	int flags)
{
	int r;

	FUNC0();
	if (flags & ~(PAM_SILENT))
		FUNC1(PAM_BAD_CONSTANT);
	r = FUNC2(pamh, PAM_SM_CLOSE_SESSION, flags);
	FUNC1(r);
}