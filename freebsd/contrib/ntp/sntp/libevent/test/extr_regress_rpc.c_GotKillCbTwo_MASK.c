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
struct msg {int dummy; } ;
struct kill {int dummy; } ;
struct evrpc_status {scalar_t__ error; } ;

/* Variables and functions */
 scalar_t__ EVRPC_STATUS_ERR_NONE ; 
 int FUNC0 (struct kill*,char*,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int test_ok ; 

__attribute__((used)) static void
FUNC4(struct evrpc_status *status,
    struct msg *msg, struct kill *kill, void *arg)
{
	char *weapon;
	char *action;

	if (status->error != EVRPC_STATUS_ERR_NONE)
		goto done;

	if (FUNC0(kill, weapon, &weapon) == -1) {
		FUNC2(stderr, "get weapon\n");
		goto done;
	}
	if (FUNC0(kill, action, &action) == -1) {
		FUNC2(stderr, "get action\n");
		goto done;
	}

	if (FUNC3(weapon, "dagger"))
		goto done;

	if (FUNC3(action, "wave around like an idiot"))
		goto done;

	test_ok += 1;

done:
	if (test_ok == 2)
		FUNC1(NULL);
}