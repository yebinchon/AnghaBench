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
typedef  int /*<<< orphan*/  u_char ;
struct umac_ctx {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,long) ; 

int FUNC1(struct umac_ctx *ctx, const u_char *input, long len)
/* Given len bytes of data, we parse it into L1_KEY_LEN chunks and   */
/* hash each one, calling the PDF on the hashed output whenever the hash- */
/* output buffer is full.                                                 */
{
    FUNC0(&ctx->hash, input, len);
    return (1);
}