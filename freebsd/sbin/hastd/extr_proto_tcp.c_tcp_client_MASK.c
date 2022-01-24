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
struct tcp_ctx {int /*<<< orphan*/  tc_fd; } ;
struct sockaddr_storage {int /*<<< orphan*/  ss_len; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_SIDE_CLIENT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_ctx*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static int
FUNC4(const char *srcaddr, const char *dstaddr, void **ctxp)
{
	struct tcp_ctx *tctx;
	struct sockaddr_storage sa;
	int ret;

	ret = FUNC3(dstaddr, TCP_SIDE_CLIENT, ctxp);
	if (ret != 0)
		return (ret);
	tctx = *ctxp;
	if (srcaddr == NULL)
		return (0);
	ret = FUNC1(srcaddr, 0, &sa);
	if (ret != 0) {
		FUNC2(tctx);
		return (ret);
	}
	if (FUNC0(tctx->tc_fd, (struct sockaddr *)&sa, sa.ss_len) == -1) {
		ret = errno;
		FUNC2(tctx);
		return (ret);
	}
	return (0);
}