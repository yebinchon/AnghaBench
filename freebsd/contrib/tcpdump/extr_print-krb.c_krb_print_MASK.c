#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct krb {int pvno; } ;
struct TYPE_5__ {int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC2(netdissect_options *ndo,
          const u_char *dat)
{
	register const struct krb *kp;

	kp = (const struct krb *)dat;

	if (dat >= ndo->ndo_snapend) {
		FUNC0((ndo, "%s", tstr));
		return;
	}

	switch (kp->pvno) {

	case 1:
	case 2:
	case 3:
		FUNC0((ndo, " v%d", kp->pvno));
		break;

	case 4:
		FUNC0((ndo, " v%d", kp->pvno));
		FUNC1(ndo, (const u_char *)kp);
		break;

	case 106:
	case 107:
		FUNC0((ndo, " v5"));
		/* Decode ASN.1 here "someday" */
		break;
	}
	return;
}