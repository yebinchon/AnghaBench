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
typedef  int u_int8_t ;
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  blf_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 

void
FUNC1(blf_ctx *c, u_int8_t *data, u_int32_t len)
{
	u_int32_t l, r;
	u_int32_t i;

	for (i = 0; i < len; i += 8) {
		l = data[0] << 24 | data[1] << 16 | data[2] << 8 | data[3];
		r = data[4] << 24 | data[5] << 16 | data[6] << 8 | data[7];
		FUNC0(c, &l, &r);
		data[0] = l >> 24 & 0xff;
		data[1] = l >> 16 & 0xff;
		data[2] = l >> 8 & 0xff;
		data[3] = l & 0xff;
		data[4] = r >> 24 & 0xff;
		data[5] = r >> 16 & 0xff;
		data[6] = r >> 8 & 0xff;
		data[7] = r & 0xff;
		data += 8;
	}
}