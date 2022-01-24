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
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*) ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ uflag ; 

int
FUNC6(char *path)
{
	struct sockaddr_un sun_sa;
	int s;

	/* Create unix domain socket. */
	if ((s = FUNC4(AF_UNIX, uflag ? SOCK_DGRAM : SOCK_STREAM,
	     0)) < 0)
		return (-1);

	FUNC3(&sun_sa, 0, sizeof(struct sockaddr_un));
	sun_sa.sun_family = AF_UNIX;

	if (FUNC5(sun_sa.sun_path, path, sizeof(sun_sa.sun_path)) >=
	    sizeof(sun_sa.sun_path)) {
		FUNC2(s);
		errno = ENAMETOOLONG;
		return (-1);
	}

	if (FUNC1(s, (struct sockaddr *)&sun_sa, FUNC0(&sun_sa)) < 0) {
		FUNC2(s);
		return (-1);
	}
	return (s);
}