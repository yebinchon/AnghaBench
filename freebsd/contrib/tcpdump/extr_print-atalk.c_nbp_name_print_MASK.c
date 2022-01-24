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
typedef  int /*<<< orphan*/  u_char ;
struct atNBPtuple {int dummy; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int nbpTupleSize ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const struct atNBPtuple *
FUNC2(netdissect_options *ndo,
               const struct atNBPtuple *tp, register const u_char *ep)
{
	register const char *cp = (const char *)tp + nbpTupleSize;

	FUNC0((ndo, " "));

	/* Object */
	FUNC0((ndo, "\""));
	if ((cp = FUNC1(ndo, cp, ep)) != NULL) {
		/* Type */
		FUNC0((ndo, ":"));
		if ((cp = FUNC1(ndo, cp, ep)) != NULL) {
			/* Zone */
			FUNC0((ndo, "@"));
			if ((cp = FUNC1(ndo, cp, ep)) != NULL)
				FUNC0((ndo, "\""));
		}
	}
	return ((const struct atNBPtuple *)cp);
}