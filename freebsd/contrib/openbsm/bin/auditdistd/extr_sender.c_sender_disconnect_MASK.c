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
struct TYPE_2__ {int adh_reset; char* adh_trail_name; int /*<<< orphan*/  adh_remoteaddr; scalar_t__ adh_trail_offset; int /*<<< orphan*/ * adh_remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* adhost ; 
 int /*<<< orphan*/  adist_free_list ; 
 int /*<<< orphan*/  adist_recv_list ; 
 int /*<<< orphan*/  adist_remote_lock ; 
 int /*<<< orphan*/  adist_remote_mtx ; 
 int /*<<< orphan*/  adist_send_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void)
{

	FUNC7(&adist_remote_lock);
	/*
	 * Check for a race between dropping rlock and acquiring wlock -
	 * another thread can close connection in-between.
	 */
	if (adhost->adh_remote == NULL) {
		FUNC6(&adist_remote_lock);
		return;
	}
	FUNC3(2, "Closing connection to %s.", adhost->adh_remoteaddr);
	FUNC5(adhost->adh_remote);
	FUNC1(&adist_remote_mtx);
	adhost->adh_remote = NULL;
	adhost->adh_reset = true;
	adhost->adh_trail_name[0] = '\0';
	adhost->adh_trail_offset = 0;
	FUNC2(&adist_remote_mtx);
	FUNC6(&adist_remote_lock);

	FUNC4("Disconnected from %s.", adhost->adh_remoteaddr);

	/* Move all in-flight requests back onto free list. */
	FUNC0(&adist_free_list, &adist_send_list, &adist_recv_list);
}