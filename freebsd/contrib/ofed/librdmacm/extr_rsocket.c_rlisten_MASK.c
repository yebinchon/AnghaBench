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
struct rsocket {scalar_t__ state; int /*<<< orphan*/  cm_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ rs_listening ; 

int FUNC3(int socket, int backlog)
{
	struct rsocket *rs;
	int ret;

	rs = FUNC1(&idm, socket);
	if (!rs)
		return FUNC0(EBADF);

	if (rs->state != rs_listening) {
		ret = FUNC2(rs->cm_id, backlog);
		if (!ret)
			rs->state = rs_listening;
	} else {
		ret = 0;
	}
	return ret;
}