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
struct mgmt_header_t {int /*<<< orphan*/  sa; int /*<<< orphan*/  da; int /*<<< orphan*/  bssid; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo, const u_char *p)
{
	const struct mgmt_header_t *hp = (const struct mgmt_header_t *) p;

	FUNC0((ndo, "BSSID:%s DA:%s SA:%s ",
	    FUNC1(ndo, (hp)->bssid), FUNC1(ndo, (hp)->da),
	    FUNC1(ndo, (hp)->sa)));
}