#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_6__ {int /*<<< orphan*/ * str; } ;
struct be {TYPE_1__ data; scalar_t__ asnlen; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_2__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo, struct be *elem)
{
	register int printable = 1, first = 1;
	const u_char *p;
	uint32_t asnlen = elem->asnlen;
	uint32_t i;

	p = elem->data.str;
	FUNC2(*p, asnlen);
	for (i = asnlen; printable && i-- > 0; p++)
		printable = FUNC0(*p);
	p = elem->data.str;
	if (printable) {
		FUNC1((ndo, "\""));
		if (FUNC3(ndo, p, asnlen, ndo->ndo_snapend)) {
			FUNC1((ndo, "\""));
			goto trunc;
		}
		FUNC1((ndo, "\""));
	} else {
		for (i = asnlen; i-- > 0; p++) {
			FUNC1((ndo, first ? "%.2x" : "_%.2x", *p));
			first = 0;
		}
	}
	return 0;

trunc:
	FUNC1((ndo, "%s", tstr));
	return -1;
}