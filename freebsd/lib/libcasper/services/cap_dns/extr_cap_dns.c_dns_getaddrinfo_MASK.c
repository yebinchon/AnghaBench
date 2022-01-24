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
struct addrinfo {int ai_flags; int ai_family; int ai_socktype; int ai_protocol; struct addrinfo* ai_next; int /*<<< orphan*/ * ai_canonname; int /*<<< orphan*/ * ai_addr; scalar_t__ ai_addrlen; } ;
typedef  int /*<<< orphan*/  nvlname ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int AF_UNSPEC ; 
 int NO_RECOVERY ; 
 int /*<<< orphan*/ * FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 int FUNC6 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int
FUNC11(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
	struct addrinfo hints, *hintsp, *res, *cur;
	const char *hostname, *servname;
	char nvlname[64];
	nvlist_t *elem;
	unsigned int ii;
	int error, family, n;

	if (!FUNC3(limits, "NAME2ADDR") &&
	    !FUNC3(limits, "NAME"))
		return (NO_RECOVERY);

	hostname = FUNC4(nvlin, "hostname", NULL);
	servname = FUNC4(nvlin, "servname", NULL);
	if (FUNC7(nvlin, "hints.ai_flags")) {
		hints.ai_flags = (int)FUNC8(nvlin,
		    "hints.ai_flags");
		hints.ai_family = (int)FUNC8(nvlin,
		    "hints.ai_family");
		hints.ai_socktype = (int)FUNC8(nvlin,
		    "hints.ai_socktype");
		hints.ai_protocol = (int)FUNC8(nvlin,
		    "hints.ai_protocol");
		hints.ai_addrlen = 0;
		hints.ai_addr = NULL;
		hints.ai_canonname = NULL;
		hints.ai_next = NULL;
		hintsp = &hints;
		family = hints.ai_family;
	} else {
		hintsp = NULL;
		family = AF_UNSPEC;
	}

	if (!FUNC2(limits, family))
		return (NO_RECOVERY);

	error = FUNC6(hostname, servname, hintsp, &res);
	if (error != 0)
		goto out;

	for (cur = res, ii = 0; cur != NULL; cur = cur->ai_next, ii++) {
		elem = FUNC0(cur);
		n = FUNC10(nvlname, sizeof(nvlname), "res%u", ii);
		FUNC1(n > 0 && n < (int)sizeof(nvlname));
		FUNC9(nvlout, nvlname, elem);
	}

	FUNC5(res);
	error = 0;
out:
	return (error);
}