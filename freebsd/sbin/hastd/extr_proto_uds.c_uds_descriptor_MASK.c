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
struct uds_ctx {scalar_t__ uc_magic; int uc_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UDS_CTX_MAGIC ; 

__attribute__((used)) static int
FUNC1(const void *ctx)
{
	const struct uds_ctx *uctx = ctx;

	FUNC0(uctx != NULL);
	FUNC0(uctx->uc_magic == UDS_CTX_MAGIC);

	return (uctx->uc_fd);
}