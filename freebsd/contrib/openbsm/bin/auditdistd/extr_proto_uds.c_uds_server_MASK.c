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
struct TYPE_2__ {int /*<<< orphan*/  sun_path; } ;
struct uds_ctx {int /*<<< orphan*/  uc_fd; int /*<<< orphan*/  uc_owner; TYPE_1__ uc_sun; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDS_SIDE_SERVER_LISTEN ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uds_ctx*) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,struct uds_ctx**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(const char *addr, void **ctxp)
{
	struct uds_ctx *uctx;
	int error;

	error = FUNC4(addr, UDS_SIDE_SERVER_LISTEN, &uctx);
	if (error != 0)
		return (error);

	(void)FUNC5(uctx->uc_sun.sun_path);
	if (FUNC0(uctx->uc_fd, (struct sockaddr *)&uctx->uc_sun,
	    sizeof(uctx->uc_sun)) == -1) {
		error = errno;
		FUNC3(uctx);
		return (error);
	}
	uctx->uc_owner = FUNC1();
	if (FUNC2(uctx->uc_fd, 8) == -1) {
		error = errno;
		FUNC3(uctx);
		return (error);
	}

	*ctxp = uctx;

	return (0);
}