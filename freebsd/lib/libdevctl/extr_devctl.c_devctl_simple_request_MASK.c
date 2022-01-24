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
struct devreq {int dr_flags; int /*<<< orphan*/  dr_name; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct devreq*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct devreq*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC3(u_long cmd, const char *name, int flags)
{
	struct devreq req;

	FUNC1(&req, 0, sizeof(req));
	if (FUNC2(req.dr_name, name, sizeof(req.dr_name)) >=
	    sizeof(req.dr_name)) {
		errno = EINVAL;
		return (-1);
	}
	req.dr_flags = flags;
	return (FUNC0(cmd, &req));
}