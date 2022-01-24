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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct blake2b_xform_ctx {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void *vctx, const uint8_t *data, uint16_t len)
{
	struct blake2b_xform_ctx *ctx = vctx;
	int rc;

	rc = FUNC0(&ctx->state, data, len);
	if (rc != 0)
		return (EINVAL);
	return (0);
}