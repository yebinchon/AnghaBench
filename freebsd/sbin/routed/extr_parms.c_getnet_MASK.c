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
struct netent {scalar_t__ n_net; } ;
struct in_addr {int s_addr; } ;
typedef  int naddr ;
typedef  int /*<<< orphan*/  hname ;

/* Variables and functions */
 int HOST_MASK ; 
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int RIP_DEFAULT ; 
 struct netent* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 

int					/* 0=bad */
FUNC9(char *name,
       naddr *netp,			/* network in host byte order */
       naddr *maskp)			/* masks are always in host order */
{
	int i;
	struct netent *np;
	naddr mask;			/* in host byte order */
	struct in_addr in;		/* a network and so host byte order */
	char hname[MAXHOSTNAMELEN+1];
	char *mname, *p;


	/* Detect and separate "1.2.3.4/24"
	 */
	if (NULL != (mname = FUNC7(name,'/'))) {
		i = (int)(mname - name);
		if (i > (int)sizeof(hname)-1)	/* name too long */
			return 0;
		FUNC3(hname, name, i);
		hname[i] = '\0';
		mname++;
		name = hname;
	}

	np = FUNC0(name);
	if (np != NULL) {
		in.s_addr = (naddr)np->n_net;
		if (0 == (in.s_addr & 0xff000000))
			in.s_addr <<= 8;
		if (0 == (in.s_addr & 0xff000000))
			in.s_addr <<= 8;
		if (0 == (in.s_addr & 0xff000000))
			in.s_addr <<= 8;
	} else if (FUNC2(name, &in) == 1) {
		in.s_addr = FUNC4(in.s_addr);
	} else if (!mname && !FUNC6(name,"default")) {
		in.s_addr = RIP_DEFAULT;
	} else {
		return 0;
	}

	if (!mname) {
		/* we cannot use the interfaces here because we have not
		 * looked at them yet.
		 */
		mask = FUNC5(FUNC1(in.s_addr));
		if ((~mask & in.s_addr) != 0)
			mask = HOST_MASK;
	} else {
		mask = (naddr)FUNC8(mname, &p, 0);
		if (*p != '\0' || mask > 32)
			return 0;
		if (mask != 0)
			mask = HOST_MASK << (32-mask);
	}

	/* must have mask of 0 with default */
	if (mask != 0 && in.s_addr == RIP_DEFAULT)
		return 0;
	/* no host bits allowed in a network number */
	if ((~mask & in.s_addr) != 0)
		return 0;
	/* require non-zero network number */
	if ((mask & in.s_addr) == 0 && in.s_addr != RIP_DEFAULT)
		return 0;
	if (in.s_addr>>24 == 0 && in.s_addr != RIP_DEFAULT)
		return 0;
	if (in.s_addr>>24 == 0xff)
		return 0;

	*netp = in.s_addr;
	*maskp = mask;
	return 1;
}