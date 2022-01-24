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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int SOCK_CLOEXEC ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  acm_lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  server_port ; 
 int sock ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(void)
{
	struct sockaddr_in addr;
	static int init;
	int ret;

	if (init)
		return;

	FUNC5(&acm_lock);
	if (init)
		goto unlock;

	if (!FUNC8())
		goto out;

	sock = FUNC7(AF_INET, SOCK_STREAM | SOCK_CLOEXEC, IPPROTO_TCP);
	if (sock < 0)
		goto out;

	FUNC4(&addr, 0, sizeof addr);
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = FUNC3(INADDR_LOOPBACK);
	addr.sin_port = FUNC2(server_port);
	ret = FUNC1(sock, (struct sockaddr *) &addr, sizeof(addr));
	if (ret) {
		FUNC0(sock);
		sock = -1;
	}
out:
	init = 1;
unlock:
	FUNC6(&acm_lock);
}