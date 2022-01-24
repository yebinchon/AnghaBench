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
struct TYPE_2__ {int /*<<< orphan*/  qdcount; } ;
typedef  TYPE_1__ HEADER ;

/* Variables and functions */
 int HFIXEDSZ ; 
 int INT16SZ ; 
 int /*<<< orphan*/  MAXDNAME ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(const char *name, int type, int class,
		const u_char *buf, const u_char *eom)
{
	const u_char *cp = buf + HFIXEDSZ;
	int qdcount = FUNC3(((const HEADER*)buf)->qdcount);

	while (qdcount-- > 0) {
		char tname[MAXDNAME+1];
		int n, ttype, tclass;

		n = FUNC0(buf, eom, cp, tname, sizeof tname);
		if (n < 0)
			return (-1);
		cp += n;
		if (cp + 2 * INT16SZ > eom)
			return (-1);
		ttype = FUNC1(cp); cp += INT16SZ;
		tclass = FUNC1(cp); cp += INT16SZ;
		if (ttype == type && tclass == class &&
		    FUNC2(tname, name) == 1)
			return (1);
	}
	return (0);
}