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
struct uds_ctx {int uc_fd; int uc_side; int /*<<< orphan*/  uc_magic; scalar_t__ uc_owner; int /*<<< orphan*/  uc_sun; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  UDS_CTX_MAGIC ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (struct uds_ctx*) ; 
 struct uds_ctx* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(const char *addr, int side, struct uds_ctx **uctxp)
{
	struct uds_ctx *uctx;
	int error;

	uctx = FUNC1(sizeof(*uctx));
	if (uctx == NULL)
		return (errno);

	/* Parse given address. */
	error = FUNC3(addr, &uctx->uc_sun);
	if (error != 0) {
		FUNC0(uctx);
		return (error);
	}

	uctx->uc_fd = FUNC2(AF_UNIX, SOCK_STREAM, 0);
	if (uctx->uc_fd == -1) {
		error = errno;
		FUNC0(uctx);
		return (error);
	}

	uctx->uc_side = side;
	uctx->uc_owner = 0;
	uctx->uc_magic = UDS_CTX_MAGIC;
	*uctxp = uctx;

	return (0);
}