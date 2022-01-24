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
struct ib_user_mad {int timeout_ms; int retries; int agent_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,void*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct ib_user_mad*) ; 
 int FUNC3 () ; 
 int umaddebug ; 
 int FUNC4 (int,struct ib_user_mad*,int) ; 

int FUNC5(int fd, int agentid, void *umad, int length,
	      int timeout_ms, int retries)
{
	struct ib_user_mad *mad = umad;
	int n;

	FUNC1("fd %d agentid %d umad %p timeout %u",
	      fd, agentid, umad, timeout_ms);
	errno = 0;

	mad->timeout_ms = timeout_ms;
	mad->retries = retries;
	mad->agent_id = agentid;

	if (umaddebug > 1)
		FUNC2(mad);

	n = FUNC4(fd, mad, length + FUNC3());
	if (n == length + FUNC3())
		return 0;

	FUNC0("write returned %d != sizeof umad %zu + length %d (%m)",
	      n, FUNC3(), length);
	if (!errno)
		errno = EIO;
	return -EIO;
}