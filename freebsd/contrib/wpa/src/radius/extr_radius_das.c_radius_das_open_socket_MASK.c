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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int port)
{
	int s;
	struct sockaddr_in addr;

	s = FUNC4(PF_INET, SOCK_DGRAM, 0);
	if (s < 0) {
		FUNC6(MSG_INFO, "RADIUS DAS: socket: %s", FUNC5(errno));
		return -1;
	}

	FUNC3(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = FUNC2(port);
	if (FUNC0(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC6(MSG_INFO, "RADIUS DAS: bind: %s", FUNC5(errno));
		FUNC1(s);
		return -1;
	}

	return s;
}