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
struct sp_ctx {scalar_t__ sp_magic; int sp_side; int* sp_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SP_CTX_MAGIC ; 
#define  SP_SIDE_CLIENT 130 
#define  SP_SIDE_SERVER 129 
#define  SP_SIDE_UNDEF 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,unsigned char*,size_t,int*) ; 

__attribute__((used)) static int
FUNC4(void *ctx, unsigned char *data, size_t size, int *fdp)
{
	struct sp_ctx *spctx = ctx;
	int fd;

	FUNC1(spctx != NULL);
	FUNC1(spctx->sp_magic == SP_CTX_MAGIC);

	switch (spctx->sp_side) {
	case SP_SIDE_UNDEF:
		/*
		 * If the first operation done by the caller is proto_recv(),
		 * we assume this is the server.
		 */
		/* FALLTHROUGH */
		spctx->sp_side = SP_SIDE_SERVER;
		/* Close other end. */
		FUNC2(spctx->sp_fd[0]);
		spctx->sp_fd[0] = -1;
	case SP_SIDE_SERVER:
		FUNC1(spctx->sp_fd[1] >= 0);
		fd = spctx->sp_fd[1];
		break;
	case SP_SIDE_CLIENT:
		FUNC1(spctx->sp_fd[0] >= 0);
		fd = spctx->sp_fd[0];
		break;
	default:
		FUNC0("Invalid socket side (%d).", spctx->sp_side);
	}

	/* Someone is just trying to decide about side. */
	if (data == NULL)
		return (0);

	return (FUNC3(fd, data, size, fdp));
}