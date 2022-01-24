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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 char const* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  showhostnames ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char const*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char const* FUNC7 (int /*<<< orphan*/ *) ; 

const char *
FUNC8(
	sockaddr_u *netnum
	)
{
	const char *	hostn;
	char *		buf;

	if (!showhostnames || FUNC2(netnum))
		return FUNC7(netnum);
	else if (FUNC0(netnum))
		return FUNC4(netnum);

	hostn = FUNC6(netnum);
	FUNC1(buf);
	FUNC5(buf, LIB_BUFLENGTH, "%s:%u", hostn, FUNC3(netnum));

	return buf;
}