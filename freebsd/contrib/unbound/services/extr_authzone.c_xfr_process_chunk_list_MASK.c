#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module_env {int /*<<< orphan*/ * now; int /*<<< orphan*/  scratch_buffer; TYPE_3__* auth_zones; } ;
struct auth_zone {int /*<<< orphan*/  lock; scalar_t__ zone_expired; } ;
struct auth_xfer {scalar_t__ serial; int /*<<< orphan*/  name; scalar_t__ have_zone; int /*<<< orphan*/  lease_time; TYPE_2__* task_transfer; scalar_t__ zone_expired; int /*<<< orphan*/  lock; int /*<<< orphan*/  dclass; int /*<<< orphan*/  namelen; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__* master; int /*<<< orphan*/  on_ixfr_is_axfr; scalar_t__ on_ixfr; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; scalar_t__ http; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ VERB_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct auth_xfer*,struct auth_zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_xfer*,struct auth_zone*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_xfer*,struct auth_zone*,int /*<<< orphan*/ ) ; 
 struct auth_zone* FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,char*,...) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC11 (struct auth_zone*,struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct auth_xfer*,struct module_env*) ; 

__attribute__((used)) static int
FUNC13(struct auth_xfer* xfr, struct module_env* env,
	int* ixfr_fail)
{
	struct auth_zone* z;

	/* obtain locks and structures */
	/* release xfr lock, then, while holding az->lock grab both
	 * z->lock and xfr->lock */
	FUNC6(&xfr->lock);
	FUNC7(&env->auth_zones->lock);
	z = FUNC3(env->auth_zones, xfr->name, xfr->namelen,
		xfr->dclass);
	if(!z) {
		FUNC8(&env->auth_zones->lock);
		/* the zone is gone, ignore xfr results */
		FUNC5(&xfr->lock);
		return 0;
	}
	FUNC9(&z->lock);
	FUNC5(&xfr->lock);
	FUNC8(&env->auth_zones->lock);

	/* apply data */
	if(xfr->task_transfer->master->http) {
		if(!FUNC1(xfr, z, env->scratch_buffer)) {
			FUNC8(&z->lock);
			FUNC10(VERB_ALGO, "http from %s: could not store data",
				xfr->task_transfer->master->host);
			return 0;
		}
	} else if(xfr->task_transfer->on_ixfr &&
		!xfr->task_transfer->on_ixfr_is_axfr) {
		if(!FUNC2(xfr, z, env->scratch_buffer)) {
			FUNC8(&z->lock);
			FUNC10(VERB_ALGO, "xfr from %s: could not store IXFR"
				" data", xfr->task_transfer->master->host);
			*ixfr_fail = 1;
			return 0;
		}
	} else {
		if(!FUNC0(xfr, z, env->scratch_buffer)) {
			FUNC8(&z->lock);
			FUNC10(VERB_ALGO, "xfr from %s: could not store AXFR"
				" data", xfr->task_transfer->master->host);
			return 0;
		}
	}
	xfr->zone_expired = 0;
	z->zone_expired = 0;
	if(!FUNC11(z, xfr)) {
		FUNC8(&z->lock);
		FUNC10(VERB_ALGO, "xfr from %s: no SOA in zone after update"
			" (or malformed RR)", xfr->task_transfer->master->host);
		return 0;
	}
	if(xfr->have_zone)
		xfr->lease_time = *env->now;

	/* unlock */
	FUNC8(&z->lock);

	if(verbosity >= VERB_QUERY && xfr->have_zone) {
		char zname[256];
		FUNC4(xfr->name, zname);
		FUNC10(VERB_QUERY, "auth zone %s updated to serial %u", zname,
			(unsigned)xfr->serial);
	}
	/* see if we need to write to a zonefile */
	FUNC12(xfr, env);
	return 1;
}