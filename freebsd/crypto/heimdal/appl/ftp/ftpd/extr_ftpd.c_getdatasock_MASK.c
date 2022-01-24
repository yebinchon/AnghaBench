#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct TYPE_2__ {scalar_t__ pw_uid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EADDRINUSE ; 
 int /*<<< orphan*/  IPTOS_THROUGHPUT ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ctrl_addr ; 
 scalar_t__ data ; 
 int /*<<< orphan*/  data_source ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int,char const*) ; 
 TYPE_1__* pw ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static FILE *
FUNC13(const char *mode, int domain)
{
	int s, t, tries;

	if (data >= 0)
		return (FUNC3(data, mode));
	if (FUNC4(0) < 0)
		FUNC2("Failed to seteuid");
	s = FUNC6(domain, SOCK_STREAM, 0);
	if (s < 0)
		goto bad;
	FUNC10 (s, 1);
	/* anchor socket to avoid multi-homing problems */
	FUNC9 (data_source,
				     FUNC7 (ctrl_addr),
				     FUNC8 (data_source));

	for (tries = 1; ; tries++) {
		if (FUNC0(s, data_source,
			 FUNC12 (data_source)) >= 0)
			break;
		if (errno != EADDRINUSE || tries > 10)
			goto bad;
		FUNC5(tries);
	}
	if (FUNC4(pw->pw_uid) < 0)
		FUNC2("Failed to seteuid");
#ifdef IPTOS_THROUGHPUT
	socket_set_tos (s, IPTOS_THROUGHPUT);
#endif
	return (FUNC3(s, mode));
bad:
	/* Return the real value of errno (close may change it) */
	t = errno;
	if (FUNC4((uid_t)pw->pw_uid) < 0)
		FUNC2("Failed to seteuid");
	FUNC1(s);
	errno = t;
	return (NULL);
}