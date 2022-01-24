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
struct uds_ctx {scalar_t__ uc_magic; scalar_t__ uc_side; scalar_t__ uc_fd; int /*<<< orphan*/  uc_sun; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UDS_CTX_MAGIC ; 
 scalar_t__ UDS_SIDE_CLIENT ; 
 int FUNC1 (scalar_t__,struct sockaddr*,int) ; 
 int errno ; 

__attribute__((used)) static int
FUNC2(void *ctx, int timeout)
{
	struct uds_ctx *uctx = ctx;

	FUNC0(uctx != NULL);
	FUNC0(uctx->uc_magic == UDS_CTX_MAGIC);
	FUNC0(uctx->uc_side == UDS_SIDE_CLIENT);
	FUNC0(uctx->uc_fd >= 0);
	FUNC0(timeout >= -1);

	if (FUNC1(uctx->uc_fd, (struct sockaddr *)&uctx->uc_sun,
	    sizeof(uctx->uc_sun)) == -1) {
		return (errno);
	}

	return (0);
}