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
struct sockaddr {int dummy; } ;
typedef  scalar_t__ socklen_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int EAI_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct sockaddr const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,size_t) ; 

int
FUNC10(cap_channel_t *chan, const struct sockaddr *sa, socklen_t salen,
    char *host, size_t hostlen, char *serv, size_t servlen, int flags)
{
	nvlist_t *nvl;
	int error;

	nvl = FUNC4(0);
	FUNC3(nvl, "cmd", "getnameinfo");
	FUNC2(nvl, "hostlen", (uint64_t)hostlen);
	FUNC2(nvl, "servlen", (uint64_t)servlen);
	FUNC1(nvl, "sa", sa, (size_t)salen);
	FUNC2(nvl, "flags", (uint64_t)flags);
	nvl = FUNC0(chan, nvl);
	if (nvl == NULL)
		return (EAI_MEMORY);
	if (FUNC7(nvl, "error") != 0) {
		error = (int)FUNC7(nvl, "error");
		FUNC5(nvl);
		return (error);
	}

	if (host != NULL && FUNC6(nvl, "host"))
		FUNC9(host, FUNC8(nvl, "host"), hostlen + 1);
	if (serv != NULL && FUNC6(nvl, "serv"))
		FUNC9(serv, FUNC8(nvl, "serv"), servlen + 1);
	FUNC5(nvl);
	return (0);
}