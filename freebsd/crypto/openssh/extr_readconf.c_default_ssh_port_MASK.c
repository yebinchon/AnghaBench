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
struct servent {int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int SSH_DEFAULT_PORT ; 
 int /*<<< orphan*/  SSH_SERVICE_NAME ; 
 struct servent* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(void)
{
	static int port;
	struct servent *sp;

	if (port == 0) {
		sp = FUNC0(SSH_SERVICE_NAME, "tcp");
		port = sp ? FUNC1(sp->s_port) : SSH_DEFAULT_PORT;
	}
	return port;
}