#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct interface_info {TYPE_2__* client; } ;
struct client_lease {scalar_t__ expiry; scalar_t__ renewal; struct client_lease* next; int /*<<< orphan*/ * medium; int /*<<< orphan*/  address; } ;
struct TYPE_4__ {TYPE_1__* config; void* state; struct client_lease* alias; struct client_lease* active; struct client_lease* leases; } ;
struct TYPE_3__ {scalar_t__ retry_interval; } ;

/* Variables and functions */
 void* S_BOUND ; 
 void* S_INIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  (*) (struct interface_info*),struct interface_info*) ; 
 scalar_t__ cur_time ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct client_lease*) ; 
 int /*<<< orphan*/  FUNC8 (struct interface_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct interface_info*) ; 

void
FUNC10(void *ipp)
{
	struct interface_info *ip = ipp;
	struct client_lease *loop = ip->client->active;
	struct client_lease *lp;

	FUNC2("No DHCPOFFERS received.");

	/* We may not have an active lease, but we may have some
	   predefined leases that we can try. */
	if (!ip->client->active && ip->client->leases)
		goto activate_next;

	/* Run through the list of leases and see if one can be used. */
	while (ip->client->active) {
		if (ip->client->active->expiry > cur_time) {
			FUNC2("Trying recorded lease %s",
			    FUNC3(ip->client->active->address));
			/* Run the client script with the existing
			   parameters. */
			FUNC6("TIMEOUT",
			    ip->client->active->medium);
			FUNC7("new_", ip->client->active);
			if (ip->client->alias)
				FUNC7("alias_",
				    ip->client->alias);

			/* If the old lease is still good and doesn't
			   yet need renewal, go into BOUND state and
			   timeout at the renewal time. */
			if (!FUNC5()) {
				if (cur_time <
				    ip->client->active->renewal) {
					ip->client->state = S_BOUND;
					FUNC2("bound: renewal in %d seconds.",
					    (int)(ip->client->active->renewal -
					    cur_time));
					FUNC0(
					    ip->client->active->renewal,
					    state_bound, ip);
				} else {
					ip->client->state = S_BOUND;
					FUNC2("bound: immediate renewal.");
					FUNC8(ip);
				}
				FUNC4();
				FUNC1();
				return;
			}
		}

		/* If there are no other leases, give up. */
		if (!ip->client->leases) {
			ip->client->leases = ip->client->active;
			ip->client->active = NULL;
			break;
		}

activate_next:
		/* Otherwise, put the active lease at the end of the
		   lease list, and try another lease.. */
		for (lp = ip->client->leases; lp->next; lp = lp->next)
			;
		lp->next = ip->client->active;
		if (lp->next)
			lp->next->next = NULL;
		ip->client->active = ip->client->leases;
		ip->client->leases = ip->client->leases->next;

		/* If we already tried this lease, we've exhausted the
		   set of leases, so we might as well give up for
		   now. */
		if (ip->client->active == loop)
			break;
		else if (!loop)
			loop = ip->client->active;
	}

	/* No leases were available, or what was available didn't work, so
	   tell the shell script that we failed to allocate an address,
	   and try again later. */
	FUNC2("No working leases in persistent database - sleeping.\n");
	FUNC6("FAIL", NULL);
	if (ip->client->alias)
		FUNC7("alias_", ip->client->alias);
	FUNC5();
	ip->client->state = S_INIT;
	FUNC0(cur_time + ip->client->config->retry_interval, state_init,
	    ip);
	FUNC1();
}