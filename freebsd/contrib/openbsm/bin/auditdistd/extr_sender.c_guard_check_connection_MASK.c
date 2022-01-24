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
struct TYPE_2__ {scalar_t__ adh_role; int /*<<< orphan*/  adh_remoteaddr; int /*<<< orphan*/ * adh_remote; } ;

/* Variables and functions */
 scalar_t__ ADIST_ROLE_SENDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* adhost ; 
 int /*<<< orphan*/  adist_remote_lock ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void)
{

	FUNC0(adhost->adh_role == ADIST_ROLE_SENDER);

	FUNC3(&adist_remote_lock);
	if (adhost->adh_remote != NULL) {
		FUNC4(&adist_remote_lock);
		FUNC1(3, "remote_guard: Connection to %s is ok.",
		    adhost->adh_remoteaddr);
		return;
	}

	/*
	 * Upgrade the lock. It doesn't have to be atomic as no other thread
	 * can change connection status from disconnected to connected.
	 */
	FUNC4(&adist_remote_lock);
	FUNC1(1, "remote_guard: Reconnecting to %s.",
	    adhost->adh_remoteaddr);
	if (FUNC5() == 0) {
		FUNC2("Successfully reconnected to %s.",
		    adhost->adh_remoteaddr);
	} else {
		FUNC1(1, "remote_guard: Reconnect to %s failed.",
		    adhost->adh_remoteaddr);
	}
}