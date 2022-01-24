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
struct ssh_digest_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ssh_digest_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf const*) ; 

int
FUNC3(struct ssh_digest_ctx *ctx, const struct sshbuf *b)
{
	return FUNC0(ctx, FUNC2(b), FUNC1(b));
}