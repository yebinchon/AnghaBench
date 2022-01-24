#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  in6; int /*<<< orphan*/  in; } ;
struct TYPE_9__ {scalar_t__ family; TYPE_1__ type; } ;
typedef  TYPE_2__ isc_netaddr_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(isc_netaddr_t *t, const isc_netaddr_t *s) {
	isc_netaddr_t *src;

	FUNC0(s, src);	/* Must come before IN6_IS_ADDR_V4MAPPED. */

	FUNC2(s->family == AF_INET6);
	FUNC2(FUNC1(&src->type.in6));

	FUNC4(t, 0, sizeof(*t));
	t->family = AF_INET;
	FUNC3(&t->type.in, (char *)&src->type.in6 + 12, 4);
	return;
}