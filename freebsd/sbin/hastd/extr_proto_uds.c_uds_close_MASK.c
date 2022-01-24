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
struct TYPE_2__ {char* sun_path; } ;
struct uds_ctx {scalar_t__ uc_magic; scalar_t__ uc_fd; scalar_t__ uc_side; scalar_t__ uc_owner; TYPE_1__ uc_sun; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UDS_CTX_MAGIC ; 
 scalar_t__ UDS_SIDE_SERVER_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct uds_ctx*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(void *ctx)
{
	struct uds_ctx *uctx = ctx;

	FUNC0(uctx != NULL);
	FUNC0(uctx->uc_magic == UDS_CTX_MAGIC);

	if (uctx->uc_fd >= 0)
		FUNC1(uctx->uc_fd);
	/*
	 * Unlink the socket only if we are the owner and this is descriptor
	 * we listen on.
	 */
	if (uctx->uc_side == UDS_SIDE_SERVER_LISTEN &&
	    uctx->uc_owner == FUNC3()) {
		FUNC0(uctx->uc_sun.sun_path[0] != '\0');
		if (FUNC5(uctx->uc_sun.sun_path) == -1) {
			FUNC4(LOG_WARNING,
			    "Unable to unlink socket file %s",
			    uctx->uc_sun.sun_path);
		}
	}
	uctx->uc_owner = 0;
	uctx->uc_magic = 0;
	FUNC2(uctx);
}