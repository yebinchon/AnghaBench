#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {scalar_t__ opcode; int /*<<< orphan*/  qdcount; } ;
typedef  TYPE_1__ HEADER ;

/* Variables and functions */
 int HFIXEDSZ ; 
 int INT16SZ ; 
 int /*<<< orphan*/  MAXDNAME ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ ns_o_update ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

int
FUNC4(const u_char *buf1, const u_char *eom1,
		 const u_char *buf2, const u_char *eom2)
{
	const u_char *cp = buf1 + HFIXEDSZ;
	int qdcount = FUNC2(((const HEADER*)buf1)->qdcount);

	if (buf1 + HFIXEDSZ > eom1 || buf2 + HFIXEDSZ > eom2)
		return (-1);

	/*
	 * Only header section present in replies to
	 * dynamic update packets.
	 */
	if ((((const HEADER *)buf1)->opcode == ns_o_update) &&
	    (((const HEADER *)buf2)->opcode == ns_o_update))
		return (1);

	if (qdcount != FUNC2(((const HEADER*)buf2)->qdcount))
		return (0);
	while (qdcount-- > 0) {
		char tname[MAXDNAME+1];
		int n, ttype, tclass;

		n = FUNC0(buf1, eom1, cp, tname, sizeof tname);
		if (n < 0)
			return (-1);
		cp += n;
		if (cp + 2 * INT16SZ > eom1)
			return (-1);
		ttype = FUNC1(cp);	cp += INT16SZ;
		tclass = FUNC1(cp); cp += INT16SZ;
		if (!FUNC3(tname, ttype, tclass, buf2, eom2))
			return (0);
	}
	return (1);
}