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
struct ifbareq {char* ifba_vlan; int /*<<< orphan*/  ifba_flags; int /*<<< orphan*/  ifba_expire; int /*<<< orphan*/  ifba_ifsname; int /*<<< orphan*/  ifba_dst; } ;
struct ifbaconf {int ifbac_len; char* ifbac_buf; struct ifbareq* ifbac_req; } ;
struct ether_addr {int /*<<< orphan*/  octet; } ;
typedef  int /*<<< orphan*/  ifbac ;

/* Variables and functions */
 int /*<<< orphan*/  BRDGRTS ; 
 int /*<<< orphan*/  IFBAFBITS ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct ifbaconf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct ether_addr*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* FUNC7 (char*,int) ; 

__attribute__((used)) static void
FUNC8(int s, const char *prefix)
{
	struct ifbaconf ifbac;
	struct ifbareq *ifba;
	char *inbuf = NULL, *ninbuf;
	int i, len = 8192;
	struct ether_addr ea;

	for (;;) {
		ninbuf = FUNC7(inbuf, len);
		if (ninbuf == NULL)
			FUNC1(1, "unable to allocate address buffer");
		ifbac.ifbac_len = len;
		ifbac.ifbac_buf = inbuf = ninbuf;
		if (FUNC0(s, BRDGRTS, &ifbac, sizeof(ifbac), 0) < 0)
			FUNC1(1, "unable to get address cache");
		if ((ifbac.ifbac_len + sizeof(*ifba)) < len)
			break;
		len *= 2;
	}

	for (i = 0; i < ifbac.ifbac_len / sizeof(*ifba); i++) {
		ifba = ifbac.ifbac_req + i;
		FUNC4(ea.octet, ifba->ifba_dst,
		    sizeof(ea.octet));
		FUNC6("%s%s Vlan%d %s %lu ", prefix, FUNC2(&ea),
		    ifba->ifba_vlan, ifba->ifba_ifsname, ifba->ifba_expire);
		FUNC5("flags", ifba->ifba_flags, IFBAFBITS);
		FUNC6("\n");
	}

	FUNC3(inbuf);
}