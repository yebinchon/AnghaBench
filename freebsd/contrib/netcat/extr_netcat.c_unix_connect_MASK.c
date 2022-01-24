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
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  FD_CLOEXEC ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ uflag ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unix_dg_tmp_socket ; 

int
FUNC8(char *path)
{
	struct sockaddr_un sun;
	int s;

	if (uflag) {
		if ((s = FUNC7(unix_dg_tmp_socket)) < 0)
			return (-1);
	} else {
		if ((s = FUNC5(AF_UNIX, SOCK_STREAM, 0)) < 0)
			return (-1);
	}
	(void)FUNC3(s, F_SETFD, FD_CLOEXEC);

	FUNC4(&sun, 0, sizeof(struct sockaddr_un));
	sun.sun_family = AF_UNIX;

	if (FUNC6(sun.sun_path, path, sizeof(sun.sun_path)) >=
	    sizeof(sun.sun_path)) {
		FUNC1(s);
		errno = ENAMETOOLONG;
		return (-1);
	}
	if (FUNC2(s, (struct sockaddr *)&sun, FUNC0(&sun)) < 0) {
		FUNC1(s);
		return (-1);
	}
	return (s);

}