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
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 

const char *
FUNC4(
	const char *		hostname,
	const sockaddr_u *	addr
	)
{
	const char *	addrtxt;
	char *		result;
	int		cnt;

	addrtxt = FUNC2(addr);
	FUNC0(result);
	if (FUNC3(hostname, addrtxt))
		cnt = FUNC1(result, LIB_BUFLENGTH, "%s %s",
			       hostname, addrtxt);
	else
		cnt = FUNC1(result, LIB_BUFLENGTH, "%s", addrtxt);
	if (cnt >= LIB_BUFLENGTH)
		FUNC1(result, LIB_BUFLENGTH,
			 "hostnameaddr ERROR have %d (%d needed)",
			 LIB_BUFLENGTH, cnt + 1);

	return result;
}