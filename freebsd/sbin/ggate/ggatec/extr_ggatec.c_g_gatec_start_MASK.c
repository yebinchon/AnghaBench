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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ reconnect ; 
 int /*<<< orphan*/  recv_thread ; 
 int /*<<< orphan*/  recvfd ; 
 int /*<<< orphan*/  recvtd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sendfd ; 
 int /*<<< orphan*/  sendtd ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  unit ; 

__attribute__((used)) static void
FUNC7(void)
{
	int error;

	reconnect = 0;
	error = FUNC3(&recvtd, NULL, recv_thread, NULL);
	if (error != 0) {
		FUNC1(unit, 1);
		FUNC2("pthread_create(recv_thread): %s.",
		    FUNC6(error));
	}
	sendtd = FUNC4();
	FUNC5(NULL);
	/* Disconnected. */
	FUNC0(sendfd);
	FUNC0(recvfd);
}