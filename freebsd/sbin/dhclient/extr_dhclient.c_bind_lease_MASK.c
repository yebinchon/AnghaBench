#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int16_t ;
struct option_data {int len; int /*<<< orphan*/  data; } ;
struct interface_info {TYPE_3__* client; } ;
struct TYPE_10__ {scalar_t__ renewal; int /*<<< orphan*/  address; int /*<<< orphan*/  medium; struct option_data* options; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_4__* active; TYPE_4__* new; TYPE_4__* alias; TYPE_2__* config; int /*<<< orphan*/  medium; } ;
struct TYPE_8__ {scalar_t__* default_actions; TYPE_1__* defaults; } ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ ACTION_SUPERSEDE ; 
 size_t DHO_INTERFACE_MTU ; 
 scalar_t__ MIN_MTU ; 
 scalar_t__ S_BOUND ; 
 scalar_t__ S_REBOOTING ; 
 scalar_t__ S_RENEWING ; 
 scalar_t__ S_REQUESTING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,struct interface_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ cur_time ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  privfd ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  state_bound ; 
 int /*<<< orphan*/  FUNC12 (char*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct interface_info*,TYPE_4__*,int /*<<< orphan*/ ) ; 

void
FUNC14(struct interface_info *ip)
{
	struct option_data *opt;

	/* Remember the medium. */
	ip->client->new->medium = ip->client->medium;

	opt = &ip->client->new->options[DHO_INTERFACE_MTU];
	if (opt->len == sizeof(u_int16_t)) {
		u_int16_t mtu = 0;
		u_int16_t old_mtu = 0;
		bool supersede = (ip->client->config->default_actions[DHO_INTERFACE_MTU] ==
			ACTION_SUPERSEDE);

		if (supersede)
			mtu = FUNC3(ip->client->config->defaults[DHO_INTERFACE_MTU].data);
		else
			mtu = FUNC1(opt->data);

		if (ip->client->active) {
			opt = &ip->client->active->options[DHO_INTERFACE_MTU];
			if (opt->len == sizeof(u_int16_t)) {
				old_mtu = FUNC1(opt->data);
			}
		}

		if (mtu < MIN_MTU) {
			/* Treat 0 like a user intentionally doesn't want to change MTU and,
			 * therefore, warning is not needed */
			if (!supersede || mtu != 0)
				FUNC12("mtu size %u < %d: ignored", (unsigned)mtu, MIN_MTU);
		} else if (ip->client->state != S_RENEWING || mtu != old_mtu) {
			FUNC5(privfd, mtu);
		}
	}

	/* Write out the new lease. */
	FUNC13(ip, ip->client->new, 0);

	/* Run the client script with the new parameters. */
	FUNC10((ip->client->state == S_REQUESTING ? "BOUND" :
	    (ip->client->state == S_RENEWING ? "RENEW" :
	    (ip->client->state == S_REBOOTING ? "REBOOT" : "REBIND"))),
	    ip->client->new->medium);
	if (ip->client->active && ip->client->state != S_REBOOTING)
		FUNC11("old_", ip->client->active);
	FUNC11("new_", ip->client->new);
	if (ip->client->alias)
		FUNC11("alias_", ip->client->alias);
	FUNC9();

	/* Replace the old active lease with the new one. */
	if (ip->client->active)
		FUNC2(ip->client->active);
	ip->client->active = ip->client->new;
	ip->client->new = NULL;

	/* Set up a timeout to start the renewal process. */
	FUNC0(ip->client->active->renewal, state_bound, ip);

	FUNC6("bound to %s -- renewal in %d seconds.",
	    FUNC7(ip->client->active->address),
	    (int)(ip->client->active->renewal - cur_time));
	ip->client->state = S_BOUND;
	FUNC8();
	FUNC4();
}