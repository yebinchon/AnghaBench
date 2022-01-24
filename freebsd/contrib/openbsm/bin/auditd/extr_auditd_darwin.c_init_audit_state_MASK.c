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

/* Variables and functions */
 int AUC_DISABLED ; 
 int AUC_NOAUDIT ; 
 int /*<<< orphan*/  AUD_STATE_DISABLED ; 
 int /*<<< orphan*/  AUD_STATE_ENABLED ; 
 scalar_t__ ENOSYS ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auditing_state ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void)
{
	int au_cond;

	if (FUNC0(&au_cond) < 0) {
		if (errno != ENOSYS) {
			FUNC1("Audit status check failed (%s)",
			    FUNC2(errno));
		}
		auditing_state = AUD_STATE_DISABLED;
	} else
		if (au_cond == AUC_NOAUDIT || au_cond == AUC_DISABLED)
			auditing_state = AUD_STATE_DISABLED;
		else
			auditing_state = AUD_STATE_ENABLED;
}