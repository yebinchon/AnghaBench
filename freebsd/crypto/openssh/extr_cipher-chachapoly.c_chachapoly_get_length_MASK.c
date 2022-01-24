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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct chachapoly_ctx {int /*<<< orphan*/  header_ctx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC4(struct chachapoly_ctx *ctx,
    u_int *plenp, u_int seqnr, const u_char *cp, u_int len)
{
	u_char buf[4], seqbuf[8];

	if (len < 4)
		return SSH_ERR_MESSAGE_INCOMPLETE;
	FUNC1(seqbuf, seqnr);
	FUNC3(&ctx->header_ctx, seqbuf, NULL);
	FUNC2(&ctx->header_ctx, cp, buf, 4);
	*plenp = FUNC0(buf);
	return 0;
}