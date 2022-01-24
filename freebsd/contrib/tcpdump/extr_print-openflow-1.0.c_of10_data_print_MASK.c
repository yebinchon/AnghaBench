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
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/  const*,scalar_t__ const) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static const u_char *
FUNC3(netdissect_options *ndo,
                const u_char *cp, const u_char *ep, const u_int len)
{
	if (len == 0)
		return cp;
	/* data */
	FUNC0((ndo, "\n\t data (%u octets)", len));
	FUNC1(*cp, len);
	if (ndo->ndo_vflag >= 2)
		FUNC2(ndo, "\n\t  ", cp, len);
	return cp + len;

trunc:
	FUNC0((ndo, "%s", tstr));
	return ep;
}