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
struct if_clonereq {int ifcr_total; int ifcr_count; char* ifcr_buffer; } ;
typedef  int /*<<< orphan*/  ifcr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCIFGCLONERS ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct if_clonereq*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct if_clonereq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct if_clonereq ifcr;
	char *cp, *buf;
	int idx;
	int s;

	s = FUNC8(AF_LOCAL, SOCK_DGRAM, 0);
	if (s == -1)
		FUNC1(1, "socket(AF_LOCAL,SOCK_DGRAM)");

	FUNC5(&ifcr, 0, sizeof(ifcr));

	if (FUNC3(s, SIOCIFGCLONERS, &ifcr) < 0)
		FUNC1(1, "SIOCIFGCLONERS for count");

	buf = FUNC4(ifcr.ifcr_total * IFNAMSIZ);
	if (buf == NULL)
		FUNC1(1, "unable to allocate cloner name buffer");

	ifcr.ifcr_count = ifcr.ifcr_total;
	ifcr.ifcr_buffer = buf;

	if (FUNC3(s, SIOCIFGCLONERS, &ifcr) < 0)
		FUNC1(1, "SIOCIFGCLONERS for names");

	/*
	 * In case some disappeared in the mean time, clamp it down.
	 */
	if (ifcr.ifcr_count > ifcr.ifcr_total)
		ifcr.ifcr_count = ifcr.ifcr_total;

	for (cp = buf, idx = 0; idx < ifcr.ifcr_count; idx++, cp += IFNAMSIZ) {
		if (idx > 0)
			FUNC7(' ');
		FUNC6("%s", cp);
	}

	FUNC7('\n');
	FUNC2(buf);
	FUNC0(s);
}