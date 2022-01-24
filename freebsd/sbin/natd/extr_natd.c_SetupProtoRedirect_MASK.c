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
struct protoent {int p_proto; } ;
struct in_addr {void* s_addr; } ;

/* Variables and functions */
 void* INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct in_addr,struct in_addr,struct in_addr,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct protoent* FUNC4 (char*) ; 
 int /*<<< orphan*/  mla ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*) ; 

void
FUNC7(const char* parms)
{
	char		*buf;
	char*		ptr;
	struct in_addr	localAddr;
	struct in_addr	publicAddr;
	struct in_addr	remoteAddr;
	int		proto;
	char*		protoName;
	struct protoent *protoent;

	buf = FUNC5 (parms);
	if (!buf)
		FUNC2 (1, "redirect_port: strdup() failed");
/*
 * Extract protocol.
 */
	protoName = FUNC6(buf, " \t");
	if (!protoName)
		FUNC2(1, "redirect_proto: missing protocol");

	protoent = FUNC4(protoName);
	if (protoent == NULL)
		FUNC2(1, "redirect_proto: unknown protocol %s", protoName);
	else
		proto = protoent->p_proto;
/*
 * Extract local address.
 */
	ptr = FUNC6(NULL, " \t");
	if (!ptr)
		FUNC2(1, "redirect_proto: missing local address");
	else
		FUNC1(ptr, &localAddr);
/*
 * Extract optional public address.
 */
	ptr = FUNC6(NULL, " \t");
	if (ptr)
		FUNC1(ptr, &publicAddr);
	else
		publicAddr.s_addr = INADDR_ANY;
/*
 * Extract optional remote address.
 */
	ptr = FUNC6(NULL, " \t");
	if (ptr)
		FUNC1(ptr, &remoteAddr);
	else
		remoteAddr.s_addr = INADDR_ANY;
/*
 * Create aliasing link.
 */
	(void)FUNC0(mla, localAddr, remoteAddr, publicAddr,
				       proto);

	FUNC3 (buf);
}