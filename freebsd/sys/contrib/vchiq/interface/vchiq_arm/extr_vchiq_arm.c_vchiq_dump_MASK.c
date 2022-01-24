#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ actual; scalar_t__ space; scalar_t__ offset; scalar_t__ buf; } ;
typedef  TYPE_1__ DUMP_CONTEXT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*,int) ; 
 int FUNC1 (int,int) ; 

void
FUNC2(void *dump_context, const char *str, int len)
{
	DUMP_CONTEXT_T *context = (DUMP_CONTEXT_T *)dump_context;

	if (context->actual < context->space) {
		int copy_bytes;
		if (context->offset > 0) {
			int skip_bytes = FUNC1(len, (int)context->offset);
			str += skip_bytes;
			len -= skip_bytes;
			context->offset -= skip_bytes;
			if (context->offset > 0)
				return;
		}
		copy_bytes = FUNC1(len, (int)(context->space - context->actual));
		if (copy_bytes == 0)
			return;
		FUNC0(context->buf + context->actual, str, copy_bytes);
		context->actual += copy_bytes;
		len -= copy_bytes;

		/* If tne terminating NUL is included in the length, then it
		** marks the end of a line and should be replaced with a
		** carriage return. */
		if ((len == 0) && (str[copy_bytes - 1] == '\0')) {
			char cr = '\n';
			FUNC0(context->buf + context->actual - 1, &cr, 1);
		}
	}
}