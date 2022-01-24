#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uhash_ctx_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_7__ {int msg_len; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int L1_KEY_LEN ; 
 int STREAMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(uhash_ctx_t ctx, u_char *res)
/* Incorporate any pending data, pad, and generate tag */
{
    UINT64 result_buf[STREAMS];
    UINT8 *nh_result = (UINT8 *)&result_buf;

    if (ctx->msg_len > L1_KEY_LEN) {
        if (ctx->msg_len % L1_KEY_LEN) {
            FUNC2(&ctx->hash, nh_result);
            FUNC3(ctx,(UINT32 *)nh_result);
        }
        FUNC0(ctx, res);
    } else {
        FUNC2(&ctx->hash, nh_result);
        FUNC1(ctx,nh_result, res);
    }
    FUNC4(ctx);
    return (1);
}