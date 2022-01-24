#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {void** input; } ;
typedef  TYPE_1__ chacha_ctx ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(chacha_ctx *ctx, const uint8_t *k)
{
    ctx->input[0]  = FUNC1(0x61707865);
    ctx->input[1]  = FUNC1(0x3320646e);
    ctx->input[2]  = FUNC1(0x79622d32);
    ctx->input[3]  = FUNC1(0x6b206574);
    ctx->input[4]  = FUNC0(k + 0);
    ctx->input[5]  = FUNC0(k + 4);
    ctx->input[6]  = FUNC0(k + 8);
    ctx->input[7]  = FUNC0(k + 12);
    ctx->input[8]  = FUNC0(k + 16);
    ctx->input[9]  = FUNC0(k + 20);
    ctx->input[10] = FUNC0(k + 24);
    ctx->input[11] = FUNC0(k + 28);
}