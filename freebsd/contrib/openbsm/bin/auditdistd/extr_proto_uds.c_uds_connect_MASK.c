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
struct uds_ctx {int /*<<< orphan*/  uc_sun; int /*<<< orphan*/  uc_fd; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  UDS_SIDE_CLIENT ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct uds_ctx*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,struct uds_ctx**) ; 

__attribute__((used)) static int
FUNC4(const char *srcaddr, const char *dstaddr, int timeout, void **ctxp)
{
	struct uds_ctx *uctx;
	int error;

	FUNC0(dstaddr != NULL);
	FUNC0(timeout >= -1);

	error = FUNC3(dstaddr, UDS_SIDE_CLIENT, &uctx);
	if (error != 0)
		return (error);

	FUNC0(srcaddr == NULL);

	if (FUNC1(uctx->uc_fd, (struct sockaddr *)&uctx->uc_sun,
	    sizeof(uctx->uc_sun)) == -1) {
		error = errno;
		FUNC2(uctx);
		return (error);
	}

	*ctxp = uctx;

	return (0);
}