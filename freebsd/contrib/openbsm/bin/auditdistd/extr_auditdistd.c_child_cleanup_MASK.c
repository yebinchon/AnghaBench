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
struct adist_host {scalar_t__ adh_role; scalar_t__ adh_worker_pid; int /*<<< orphan*/ * adh_conn; } ;

/* Variables and functions */
 scalar_t__ ADIST_ROLE_SENDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct adist_host *adhost)
{

	if (adhost->adh_conn != NULL) {
		FUNC0(adhost->adh_role == ADIST_ROLE_SENDER);
		FUNC1(adhost->adh_conn);
		adhost->adh_conn = NULL;
	}
	adhost->adh_worker_pid = 0;
}