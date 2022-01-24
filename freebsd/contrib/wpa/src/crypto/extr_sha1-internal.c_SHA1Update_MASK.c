#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int* count; unsigned char const* buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,unsigned char const*,int) ; 

void FUNC3(SHA1_CTX* context, const void *_data, u32 len)
{
	u32 i, j;
	const unsigned char *data = _data;

#ifdef VERBOSE
	SHAPrintContext(context, "before");
#endif
	j = (context->count[0] >> 3) & 63;
	if ((context->count[0] += len << 3) < (len << 3))
		context->count[1]++;
	context->count[1] += (len >> 29);
	if ((j + len) > 63) {
		FUNC2(&context->buffer[j], data, (i = 64-j));
		FUNC0(context->state, context->buffer);
		for ( ; i + 63 < len; i += 64) {
			FUNC0(context->state, &data[i]);
		}
		j = 0;
	}
	else i = 0;
	FUNC2(&context->buffer[j], &data[i], len - i);
#ifdef VERBOSE
	SHAPrintContext(context, "after ");
#endif
}