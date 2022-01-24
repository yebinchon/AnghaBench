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
struct alias_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct alias_link*,struct in_addr,int /*<<< orphan*/ ) ; 
 struct alias_link* FUNC1 (int /*<<< orphan*/ ,struct in_addr,struct in_addr) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mla ; 
 char* FUNC6 (char*,char) ; 
 char* FUNC7 (char const*) ; 
 char* FUNC8 (char*,char*) ; 

void FUNC9 (const char* parms)
{
	char		*buf;
	char*		ptr;
	char*		separator;
	struct in_addr	localAddr;
	struct in_addr	publicAddr;
	char*		serverPool;
	struct alias_link *aliaslink;

	buf = FUNC7 (parms);
	if (!buf)
		FUNC3 (1, "redirect_port: strdup() failed");
/*
 * Extract local address.
 */
	ptr = FUNC8 (buf, " \t");
	if (!ptr)
		FUNC3 (1, "redirect_address: missing local address");

	separator = FUNC6(ptr, ',');
	if (separator) {		/* LSNAT redirection syntax. */
		localAddr.s_addr = INADDR_NONE;
		serverPool = ptr;
	} else {
		FUNC2 (ptr, &localAddr);
		serverPool = NULL;
	}
/*
 * Extract public address.
 */
	ptr = FUNC8 (NULL, " \t");
	if (!ptr)
		FUNC3 (1, "redirect_address: missing public address");

	FUNC2 (ptr, &publicAddr);
	aliaslink = FUNC1(mla, localAddr, publicAddr);

/*
 * Setup LSNAT server pool.
 */
	if (serverPool != NULL && aliaslink != NULL) {
		ptr = FUNC8(serverPool, ",");
		while (ptr != NULL) {
			FUNC2(ptr, &localAddr);
			FUNC0(mla, aliaslink, localAddr, FUNC5(~0));
			ptr = FUNC8(NULL, ",");
		}
	}

	FUNC4 (buf);
}