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
struct umac_ctx {int /*<<< orphan*/  hash; int /*<<< orphan*/  pdf; struct umac_ctx* free_ptr; } ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  prf_key ;
typedef  int /*<<< orphan*/  aes_int_key ;

/* Variables and functions */
 int ALLOC_BOUNDARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct umac_ctx* FUNC4 (int,int) ; 

struct umac_ctx *FUNC5(const u_char key[])
/* Dynamically allocate a umac_ctx struct, initialize variables,
 * generate subkeys from key. Align to 16-byte boundary.
 */
{
    struct umac_ctx *ctx, *octx;
    size_t bytes_to_add;
    aes_int_key prf_key;

    octx = ctx = FUNC4(1, sizeof(*ctx) + ALLOC_BOUNDARY);
    if (ctx) {
        if (ALLOC_BOUNDARY) {
            bytes_to_add = ALLOC_BOUNDARY -
                              ((ptrdiff_t)ctx & (ALLOC_BOUNDARY - 1));
            ctx = (struct umac_ctx *)((u_char *)ctx + bytes_to_add);
        }
        ctx->free_ptr = octx;
        FUNC0(key, prf_key);
        FUNC2(&ctx->pdf, prf_key);
        FUNC3(&ctx->hash, prf_key);
        FUNC1(prf_key, sizeof(prf_key));
    }

    return (ctx);
}