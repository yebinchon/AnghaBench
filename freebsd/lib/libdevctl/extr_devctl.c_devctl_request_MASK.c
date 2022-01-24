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
typedef  int /*<<< orphan*/  u_long ;
struct devreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct devreq*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(u_long cmd, struct devreq *req)
{
	static int devctl2_fd = -1;

	if (devctl2_fd == -1) {
		devctl2_fd = FUNC1("/dev/devctl2", O_RDONLY);
		if (devctl2_fd == -1)
			return (-1);
	}
	return (FUNC0(devctl2_fd, cmd, req));
}