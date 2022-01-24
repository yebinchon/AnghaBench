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
typedef  int /*<<< orphan*/  uint8_t ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  qclass; } ;
struct dns_msg {int dummy; } ;
struct auth_zones {int /*<<< orphan*/  lock; } ;
struct auth_zone {int fallback_enabled; int /*<<< orphan*/  lock; scalar_t__ zone_expired; int /*<<< orphan*/  for_upstream; } ;

/* Variables and functions */
 struct auth_zone* FUNC0 (struct auth_zones*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct auth_zones* az, struct query_info* qinfo,
	struct regional* region, struct dns_msg** msg, int* fallback,
	uint8_t* dp_nm, size_t dp_nmlen)
{
	int r;
	struct auth_zone* z;
	/* find the zone that should contain the answer. */
	FUNC2(&az->lock);
	z = FUNC0(az, dp_nm, dp_nmlen, qinfo->qclass);
	if(!z) {
		FUNC3(&az->lock);
		/* no auth zone, fallback to internet */
		*fallback = 1;
		return 0;
	}
	FUNC2(&z->lock);
	FUNC3(&az->lock);

	/* if not for upstream queries, fallback */
	if(!z->for_upstream) {
		FUNC3(&z->lock);
		*fallback = 1;
		return 0;
	}
	if(z->zone_expired) {
		*fallback = z->fallback_enabled;
		FUNC3(&z->lock);
		return 0;
	}
	/* see what answer that zone would generate */
	r = FUNC1(z, qinfo, region, msg, fallback);
	FUNC3(&z->lock);
	return r;
}