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
typedef  int /*<<< orphan*/  devd_addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_un*) ; 
 int FUNC3 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC8(int socktype, const char* sockpath) {
	struct sockaddr_un devd_addr;
	int s, error;

	FUNC5(&devd_addr, 0, sizeof(devd_addr));
	devd_addr.sun_family = PF_LOCAL;
	FUNC7(devd_addr.sun_path, sockpath, sizeof(devd_addr.sun_path));
	s = FUNC6(PF_LOCAL, socktype, 0);
	FUNC0(s >= 0);
	error = FUNC3(s, (struct sockaddr*)&devd_addr, FUNC2(&devd_addr));
	FUNC1(0, error);

	FUNC4();
	return (s);
}