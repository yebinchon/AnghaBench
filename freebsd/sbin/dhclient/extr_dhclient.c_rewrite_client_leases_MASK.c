#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct client_lease {struct client_lease* next; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_5__ {TYPE_1__* client; } ;
struct TYPE_4__ {struct client_lease* active; struct client_lease* leases; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FCNTL ; 
 int /*<<< orphan*/  CAP_FCNTL_GETFL ; 
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_FSYNC ; 
 int /*<<< orphan*/  CAP_FTRUNCATE ; 
 int /*<<< orphan*/  CAP_SEEK ; 
 int /*<<< orphan*/  CAP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* ifi ; 
 scalar_t__ leaseFile ; 
 int /*<<< orphan*/  path_dhclient_db ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct client_lease*,int) ; 

void
FUNC12(void)
{
	struct client_lease *lp;
	cap_rights_t rights;

	if (!leaseFile) {
		leaseFile = FUNC6(path_dhclient_db, "w");
		if (!leaseFile)
			FUNC3("can't create %s: %m", path_dhclient_db);
		FUNC0(&rights, CAP_FCNTL, CAP_FSTAT, CAP_FSYNC,
		    CAP_FTRUNCATE, CAP_SEEK, CAP_WRITE);
		if (FUNC2(FUNC5(leaseFile), &rights) < 0) {
			FUNC3("can't limit lease descriptor: %m");
		}
		if (FUNC1(FUNC5(leaseFile), CAP_FCNTL_GETFL) < 0) {
			FUNC3("can't limit lease descriptor fcntls: %m");
		}
	} else {
		FUNC4(leaseFile);
		FUNC10(leaseFile);
	}

	for (lp = ifi->client->leases; lp; lp = lp->next)
		FUNC11(ifi, lp, 1);
	if (ifi->client->active)
		FUNC11(ifi, ifi->client->active, 1);

	FUNC4(leaseFile);
	FUNC9(FUNC5(leaseFile), FUNC8(leaseFile));
	FUNC7(FUNC5(leaseFile));
}