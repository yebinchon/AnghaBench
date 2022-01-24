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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
#define  AF_INET 130 
#define  AF_INET6 129 
#define  AF_UNSPEC 128 
 int /*<<< orphan*/  LIB_BUFLENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int const,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

const char *
FUNC10(
	const sockaddr_u *sock
	)
{
	int		saved_errno;
	char *		res;
	char *		addr;
	u_long		scope;

	saved_errno = FUNC7();
	FUNC1(res);

	if (NULL == sock) {
		FUNC9(res, "(null)", LIB_BUFLENGTH);
	} else {
		switch(FUNC0(sock)) {

		case AF_INET:
		case AF_UNSPEC:
			FUNC5(AF_INET, FUNC2(sock), res,
				  LIB_BUFLENGTH);
			break;

		case AF_INET6:
			FUNC5(AF_INET6, FUNC3(sock), res,
				  LIB_BUFLENGTH);
			scope = FUNC4(sock);
			if (0 != scope && !FUNC8(res, '%')) {
				addr = res;
				FUNC1(res);
				FUNC6(res, LIB_BUFLENGTH, "%s%%%lu",
					 addr, scope);
				res[LIB_BUFLENGTH - 1] = '\0';
			}
			break;

		default:
			FUNC6(res, LIB_BUFLENGTH, 
				 "(socktoa unknown family %d)", 
				 FUNC0(sock));
		}
	}
	errno = saved_errno;

	return res;
}