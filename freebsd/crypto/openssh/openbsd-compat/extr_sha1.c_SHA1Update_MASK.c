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
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_3__ {int count; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

void
FUNC2(SHA1_CTX *context, const u_int8_t *data, size_t len)
{
	size_t i, j;

	j = (size_t)((context->count >> 3) & 63);
	context->count += (len << 3);
	if ((j + len) > 63) {
		(void)FUNC1(&context->buffer[j], data, (i = 64-j));
		FUNC0(context->state, context->buffer);
		for ( ; i + 63 < len; i += 64)
			FUNC0(context->state, (u_int8_t *)&data[i]);
		j = 0;
	} else {
		i = 0;
	}
	(void)FUNC1(&context->buffer[j], &data[i], len - i);
}