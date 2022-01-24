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
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_8__ {int ippeerlimit; int /*<<< orphan*/  rflags; int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ restrict_u ;
struct TYPE_9__ {int ippeerlimit; int /*<<< orphan*/  rflags; } ;
typedef  TYPE_2__ r4addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct in6_addr* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  RES_IGNORE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (struct in6_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  res_calls ; 
 int /*<<< orphan*/  res_found ; 
 int /*<<< orphan*/  res_not_found ; 
 TYPE_1__ restrict_def4 ; 
 TYPE_1__ restrict_def6 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(
	sockaddr_u *srcadr,
	r4addr *r4a
	)
{
	restrict_u *match;
	struct in6_addr *pin6;

	FUNC7(NULL != r4a);

	res_calls++;
	r4a->rflags = RES_IGNORE;
	r4a->ippeerlimit = 0;

	FUNC0(1, ("restrictions: looking up %s\n", FUNC12(srcadr)));

	/* IPv4 source address */
	if (FUNC4(srcadr)) {
		/*
		 * Ignore any packets with a multicast source address
		 * (this should be done early in the receive process,
		 * not later!)
		 */
		if (FUNC3(FUNC8(srcadr))) {
			FUNC0(1, ("restrictions: srcadr %s is multicast\n", FUNC12(srcadr)));
			r4a->ippeerlimit = 2;	/* XXX: we should use a better value */
			return;
		}

		match = FUNC10(FUNC8(srcadr),
					     FUNC9(srcadr));

		FUNC2(match != NULL);

		match->count++;
		/*
		 * res_not_found counts only use of the final default
		 * entry, not any "restrict default ntpport ...", which
		 * would be just before the final default.
		 */
		if (&restrict_def4 == match)
			res_not_found++;
		else
			res_found++;
		r4a->rflags = match->rflags;
		r4a->ippeerlimit = match->ippeerlimit;
	}

	/* IPv6 source address */
	if (FUNC5(srcadr)) {
		pin6 = FUNC6(srcadr);

		/*
		 * Ignore any packets with a multicast source address
		 * (this should be done early in the receive process,
		 * not later!)
		 */
		if (FUNC1(pin6))
			return;

		match = FUNC11(pin6, FUNC9(srcadr));
		FUNC2(match != NULL);
		match->count++;
		if (&restrict_def6 == match)
			res_not_found++;
		else
			res_found++;
		r4a->rflags = match->rflags;
		r4a->ippeerlimit = match->ippeerlimit;
	}
	return;
}