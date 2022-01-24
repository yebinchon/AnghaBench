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
struct tcp_ctx {scalar_t__ tc_magic; int /*<<< orphan*/  tc_fd; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TCP_CTX_MAGIC ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC3 (char*,size_t,char*,struct sockaddr_storage*) ; 
 size_t FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC5(const void *ctx, char *addr, size_t size)
{
	const struct tcp_ctx *tctx = ctx;
	struct sockaddr_storage sa;
	socklen_t salen;

	FUNC0(tctx != NULL);
	FUNC0(tctx->tc_magic == TCP_CTX_MAGIC);

	salen = sizeof(sa);
	if (FUNC2(tctx->tc_fd, (struct sockaddr *)&sa, &salen) == -1) {
		FUNC1(FUNC4(addr, "N/A", size) < size);
		return;
	}
	FUNC1(FUNC3(addr, size, "tcp://%S", &sa) < (ssize_t)size);
}