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
typedef  scalar_t__ uint16_t ;
struct pf_addr {int dummy; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  netdissect_options ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct pf_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo, struct pf_addr *addr, uint16_t port,
    sa_family_t af, const char *proto)
{
	char buf[48];

	if (FUNC1(af, addr, buf, sizeof(buf)) == NULL)
		FUNC0((ndo, "?"));
	else
		FUNC0((ndo, "%s", buf));

	if (port)
		FUNC0((ndo, ".%hu", FUNC2(port)));
}