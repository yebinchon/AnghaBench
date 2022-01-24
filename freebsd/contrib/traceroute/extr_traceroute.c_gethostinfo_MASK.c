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
typedef  scalar_t__ u_int32_t ;
struct hostinfo {int n; scalar_t__* addrs; void* name; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; char* h_name; char** h_addr_list; } ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ MAXHOSTNAMELEN ; 
 void* FUNC1 (int,int) ; 
 struct hostent* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * capdns ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct hostent* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 

struct hostinfo *
FUNC10(register char *hostname)
{
	register int n;
	register struct hostent *hp;
	register struct hostinfo *hi;
	register char **p;
	register u_int32_t addr, *ap;

	if (FUNC9(hostname) >= MAXHOSTNAMELEN) {
		FUNC0(stderr, "%s: hostname \"%.32s...\" is too long\n",
		    prog, hostname);
		FUNC3(1);
	}
	hi = FUNC1(1, sizeof(*hi));
	if (hi == NULL) {
		FUNC0(stderr, "%s: calloc %s\n", prog, FUNC8(errno));
		FUNC3(1);
	}
	addr = FUNC5(hostname);
	if ((int32_t)addr != -1) {
		hi->name = FUNC7(hostname);
		hi->n = 1;
		hi->addrs = FUNC1(1, sizeof(hi->addrs[0]));
		if (hi->addrs == NULL) {
			FUNC0(stderr, "%s: calloc %s\n",
			    prog, FUNC8(errno));
			FUNC3(1);
		}
		hi->addrs[0] = addr;
		return (hi);
	}

#ifdef WITH_CASPER
	if (capdns != NULL)
		hp = cap_gethostbyname(capdns, hostname);
	else
#endif
		hp = FUNC4(hostname);
	if (hp == NULL) {
		FUNC0(stderr, "%s: unknown host %s\n", prog, hostname);
		FUNC3(1);
	}
	if (hp->h_addrtype != AF_INET || hp->h_length != 4) {
		FUNC0(stderr, "%s: bad host %s\n", prog, hostname);
		FUNC3(1);
	}
	hi->name = FUNC7(hp->h_name);
	for (n = 0, p = hp->h_addr_list; *p != NULL; ++n, ++p)
		continue;
	hi->n = n;
	hi->addrs = FUNC1(n, sizeof(hi->addrs[0]));
	if (hi->addrs == NULL) {
		FUNC0(stderr, "%s: calloc %s\n", prog, FUNC8(errno));
		FUNC3(1);
	}
	for (ap = hi->addrs, p = hp->h_addr_list; *p != NULL; ++ap, ++p)
		FUNC6(ap, *p, sizeof(*ap));
	return (hi);
}