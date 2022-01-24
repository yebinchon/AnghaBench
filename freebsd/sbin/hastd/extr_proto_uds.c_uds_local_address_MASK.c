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
typedef  int /*<<< orphan*/  sun ;
struct uds_ctx {scalar_t__ uc_magic; int /*<<< orphan*/  uc_fd; } ;
struct sockaddr_un {scalar_t__ sun_family; char* sun_path; } ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int socklen_t ;

/* Variables and functions */
 scalar_t__ AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ UDS_CTX_MAGIC ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC3 (char*,size_t,char*,char*) ; 
 size_t FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC5(const void *ctx, char *addr, size_t size)
{
	const struct uds_ctx *uctx = ctx;
	struct sockaddr_un sun;
	socklen_t sunlen;

	FUNC0(uctx != NULL);
	FUNC0(uctx->uc_magic == UDS_CTX_MAGIC);
	FUNC0(addr != NULL);

	sunlen = sizeof(sun);
	if (FUNC2(uctx->uc_fd, (struct sockaddr *)&sun, &sunlen) == -1) {
		FUNC1(FUNC4(addr, "N/A", size) < size);
		return;
	}
	FUNC0(sun.sun_family == AF_UNIX);
	if (sun.sun_path[0] == '\0') {
		FUNC1(FUNC4(addr, "N/A", size) < size);
		return;
	}
	FUNC1(FUNC3(addr, size, "uds://%s", sun.sun_path) < (ssize_t)size);
}