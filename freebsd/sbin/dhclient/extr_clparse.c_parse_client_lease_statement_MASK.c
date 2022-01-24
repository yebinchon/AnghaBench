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
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  iabuf; } ;
struct client_lease {int is_static; scalar_t__ expiry; struct client_lease* next; TYPE_1__ address; } ;
struct TYPE_4__ {struct client_lease* active; struct client_lease* leases; struct client_lease* alias; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int LBRACE ; 
 int RBRACE ; 
 scalar_t__ cur_time ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct client_lease*) ; 
 int /*<<< orphan*/  FUNC2 (struct interface_info*) ; 
 struct client_lease* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct client_lease*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct client_lease*,struct interface_info**) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(FILE *cfile, int is_static)
{
	struct client_lease	*lease, *lp, *pl;
	struct interface_info	*ip;
	int			 token;
	char			*val;

	token = FUNC6(&val, cfile);
	if (token != LBRACE) {
		FUNC8("expecting left brace.");
		FUNC10(cfile);
		return;
	}

	lease = FUNC3(sizeof(struct client_lease));
	if (!lease)
		FUNC0("no memory for lease.");
	FUNC5(lease, 0, sizeof(*lease));
	lease->is_static = is_static;

	ip = NULL;

	do {
		token = FUNC9(&val, cfile);
		if (token == EOF) {
			FUNC8("unterminated lease declaration.");
			FUNC1(lease);
			return;
		}
		if (token == RBRACE)
			break;
		FUNC7(cfile, lease, &ip);
	} while (1);
	token = FUNC6(&val, cfile);

	/* If the lease declaration didn't include an interface
	 * declaration that we recognized, it's of no use to us.
	 */
	if (!ip) {
		FUNC1(lease);
		return;
	}

	/* Make sure there's a client state structure... */
	if (!ip->client)
		FUNC2(ip);

	/* If this is an alias lease, it doesn't need to be sorted in. */
	if (is_static == 2) {
		ip->client->alias = lease;
		return;
	}

	/*
	 * The new lease may supersede a lease that's not the active
	 * lease but is still on the lease list, so scan the lease list
	 * looking for a lease with the same address, and if we find it,
	 * toss it.
	 */
	pl = NULL;
	for (lp = ip->client->leases; lp; lp = lp->next) {
		if (lp->address.len == lease->address.len &&
		    !FUNC4(lp->address.iabuf, lease->address.iabuf,
		    lease->address.len)) {
			if (pl)
				pl->next = lp->next;
			else
				ip->client->leases = lp->next;
			FUNC1(lp);
			break;
		}
	}

	/*
	 * If this is a preloaded lease, just put it on the list of
	 * recorded leases - don't make it the active lease.
	 */
	if (is_static) {
		lease->next = ip->client->leases;
		ip->client->leases = lease;
		return;
	}

	/*
	 * The last lease in the lease file on a particular interface is
	 * the active lease for that interface.    Of course, we don't
	 * know what the last lease in the file is until we've parsed
	 * the whole file, so at this point, we assume that the lease we
	 * just parsed is the active lease for its interface.   If
	 * there's already an active lease for the interface, and this
	 * lease is for the same ip address, then we just toss the old
	 * active lease and replace it with this one.   If this lease is
	 * for a different address, then if the old active lease has
	 * expired, we dump it; if not, we put it on the list of leases
	 * for this interface which are still valid but no longer
	 * active.
	 */
	if (ip->client->active) {
		if (ip->client->active->expiry < cur_time)
			FUNC1(ip->client->active);
		else if (ip->client->active->address.len ==
		    lease->address.len &&
		    !FUNC4(ip->client->active->address.iabuf,
		    lease->address.iabuf, lease->address.len))
			FUNC1(ip->client->active);
		else {
			ip->client->active->next = ip->client->leases;
			ip->client->leases = ip->client->active;
		}
	}
	ip->client->active = lease;

	/* Phew. */
}