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
struct tcp_ctx {scalar_t__ tc_magic; scalar_t__ tc_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCP_CTX_MAGIC ; 
 int FUNC1 (scalar_t__,unsigned char*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(void *ctx, unsigned char *data, size_t size, int *fdp)
{
	struct tcp_ctx *tctx = ctx;

	FUNC0(tctx != NULL);
	FUNC0(tctx->tc_magic == TCP_CTX_MAGIC);
	FUNC0(tctx->tc_fd >= 0);
	FUNC0(fdp == NULL);

	return (FUNC1(tctx->tc_fd, data, size, NULL));
}