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
struct io_state {int dummy; } ;
struct grouping_state {scalar_t__ nseps; scalar_t__ nrepeats; int /*<<< orphan*/ * grouping; int /*<<< orphan*/  thousep_len; int /*<<< orphan*/  thousands_sep; int /*<<< orphan*/  lead; } ;
typedef  int /*<<< orphan*/  locale_t ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct io_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct io_state*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zeroes ; 

__attribute__((used)) static int
FUNC2(struct grouping_state *gs, struct io_state *iop,
	       const CHAR *cp, const CHAR *ep, locale_t locale)
{
	const CHAR *cp0 = cp;

	if (FUNC1(iop, cp, ep, gs->lead, zeroes, locale))
		return (-1);
	cp += gs->lead;
	while (gs->nseps > 0 || gs->nrepeats > 0) {
		if (gs->nrepeats > 0)
			gs->nrepeats--;
		else {
			gs->grouping--;
			gs->nseps--;
		}
		if (FUNC0(iop, gs->thousands_sep, gs->thousep_len, locale))
			return (-1);
		if (FUNC1(iop, cp, ep, *gs->grouping, zeroes, locale))
			return (-1);
		cp += *gs->grouping;
	}
	if (cp > ep)
		cp = ep;
	return (cp - cp0);
}