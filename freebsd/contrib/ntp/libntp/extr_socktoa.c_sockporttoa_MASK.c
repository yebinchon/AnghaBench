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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/  const*) ; 

const char *
FUNC6(
	const sockaddr_u *sock
	)
{
	int		saved_errno;
	const char *	atext;
	char *		buf;

	saved_errno = FUNC4();
	atext = FUNC5(sock);
	FUNC1(buf);
	FUNC3(buf, LIB_BUFLENGTH,
		 (FUNC0(sock))
		     ? "[%s]:%hu"
		     : "%s:%hu",
		 atext, FUNC2(sock));
	errno = saved_errno;

	return buf;
}