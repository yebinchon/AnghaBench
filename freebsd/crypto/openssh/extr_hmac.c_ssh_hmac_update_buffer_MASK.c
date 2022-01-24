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
struct sshbuf {int dummy; } ;
struct ssh_hmac_ctx {int /*<<< orphan*/  digest; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct sshbuf const*) ; 

int
FUNC1(struct ssh_hmac_ctx *ctx, const struct sshbuf *b)
{
	return FUNC0(ctx->digest, b);
}