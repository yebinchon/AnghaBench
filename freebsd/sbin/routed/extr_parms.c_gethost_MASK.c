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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  naddr ;

/* Variables and functions */
 struct hostent* FUNC0 (char*) ; 
 int FUNC1 (char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int					/* 0=bad */
FUNC4(char *name,
	naddr *addrp)
{
	struct hostent *hp;
	struct in_addr in;


	/* Try for a number first, even in IRIX where gethostbyname()
	 * is smart.  This avoids hitting the name server which
	 * might be sick because routing is.
	 */
	if (FUNC1(name, &in) == 1) {
		/* get a good number, but check that it it makes some
		 * sense.
		 */
		if (FUNC3(in.s_addr)>>24 == 0
		    || FUNC3(in.s_addr)>>24 == 0xff)
			return 0;
		*addrp = in.s_addr;
		return 1;
	}

	hp = FUNC0(name);
	if (hp) {
		FUNC2(addrp, hp->h_addr, sizeof(*addrp));
		return 1;
	}

	return 0;
}