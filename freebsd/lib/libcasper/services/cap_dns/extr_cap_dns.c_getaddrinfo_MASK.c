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
typedef  int /*<<< orphan*/  uint64_t ;
struct addrinfo {struct addrinfo* ai_next; scalar_t__ ai_protocol; scalar_t__ ai_socktype; scalar_t__ ai_family; scalar_t__ ai_flags; } ;
typedef  int /*<<< orphan*/  nvlname ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int EAI_MEMORY ; 
 struct addrinfo* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (char*,int,char*,unsigned int) ; 

int
FUNC12(cap_channel_t *chan, const char *hostname, const char *servname,
    const struct addrinfo *hints, struct addrinfo **res)
{
	struct addrinfo *firstai, *prevai, *curai;
	unsigned int ii;
	const nvlist_t *nvlai;
	char nvlname[64];
	nvlist_t *nvl;
	int error, n;

	nvl = FUNC6(0);
	FUNC5(nvl, "cmd", "getaddrinfo");
	if (hostname != NULL)
		FUNC5(nvl, "hostname", hostname);
	if (servname != NULL)
		FUNC5(nvl, "servname", servname);
	if (hints != NULL) {
		FUNC4(nvl, "hints.ai_flags",
		    (uint64_t)hints->ai_flags);
		FUNC4(nvl, "hints.ai_family",
		    (uint64_t)hints->ai_family);
		FUNC4(nvl, "hints.ai_socktype",
		    (uint64_t)hints->ai_socktype);
		FUNC4(nvl, "hints.ai_protocol",
		    (uint64_t)hints->ai_protocol);
	}
	nvl = FUNC2(chan, nvl);
	if (nvl == NULL)
		return (EAI_MEMORY);
	if (FUNC9(nvl, "error") != 0) {
		error = (int)FUNC9(nvl, "error");
		FUNC7(nvl);
		return (error);
	}

	nvlai = NULL;
	firstai = prevai = curai = NULL;
	for (ii = 0; ; ii++) {
		n = FUNC11(nvlname, sizeof(nvlname), "res%u", ii);
		FUNC1(n > 0 && n < (int)sizeof(nvlname));
		if (!FUNC8(nvl, nvlname))
			break;
		nvlai = FUNC10(nvl, nvlname);
		curai = FUNC0(nvlai);
		if (curai == NULL)
			break;
		if (prevai != NULL)
			prevai->ai_next = curai;
		else if (firstai == NULL)
			firstai = curai;
		prevai = curai;
	}
	FUNC7(nvl);
	if (curai == NULL && nvlai != NULL) {
		if (firstai == NULL)
			FUNC3(firstai);
		return (EAI_MEMORY);
	}

	*res = firstai;
	return (0);
}