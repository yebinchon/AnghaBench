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
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *path)
{
	struct sockaddr_un addr;
	int s;

	s = FUNC5(PF_UNIX, SOCK_DGRAM, 0);
	if (s < 0) {
		FUNC4("socket(PF_UNIX)");
		return -1;
	}

	FUNC2(&addr, 0, sizeof(addr));
	addr.sun_family = AF_UNIX;
	FUNC3(addr.sun_path, path, sizeof(addr.sun_path));
	if (FUNC0(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC4("hlr-auc-gw: bind(PF_UNIX)");
		FUNC1(s);
		return -1;
	}

	return s;
}