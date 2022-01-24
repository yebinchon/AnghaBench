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
struct ssh {int dummy; } ;

/* Variables and functions */
 scalar_t__ STDERR_FILENO ; 
 int /*<<< orphan*/  FUNC0 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct ssh *ssh)
{
	extern int auth_sock;

	if (auth_sock != -1) {
		FUNC1(auth_sock);
		auth_sock = -1;
	}

	if (FUNC4() == FUNC5())
		FUNC1(FUNC4());
	else {
		FUNC1(FUNC4());
		FUNC1(FUNC5());
	}
	/*
	 * Close all descriptors related to channels.  They will still remain
	 * open in the parent.
	 */
	/* XXX better use close-on-exec? -markus */
	FUNC0(ssh);

	/*
	 * Close any extra file descriptors.  Note that there may still be
	 * descriptors left by system functions.  They will be closed later.
	 */
	FUNC3();

	/*
	 * Close any extra open file descriptors so that we don't have them
	 * hanging around in clients.  Note that we want to do this after
	 * initgroups, because at least on Solaris 2.3 it leaves file
	 * descriptors open.
	 */
	FUNC2(STDERR_FILENO + 1);
}