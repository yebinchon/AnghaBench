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
typedef  int uint8_t ;
struct trad_enc_ctx {int* keys; } ;

/* Variables and functions */

__attribute__((used)) static uint8_t
FUNC0(struct trad_enc_ctx *ctx)
{
	unsigned temp = ctx->keys[2] | 2;
	return (uint8_t)((temp * (temp ^ 1)) >> 8) & 0xff;
}