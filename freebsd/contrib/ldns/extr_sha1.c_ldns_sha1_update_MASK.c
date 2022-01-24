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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int count; unsigned char const* buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ ldns_sha1_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,unsigned int) ; 

void
FUNC2(ldns_sha1_ctx *context, const unsigned char *data, unsigned int len)
{
    unsigned int i;
    unsigned int j;

    j = (unsigned)(uint32_t)((context->count >> 3) & 63);
    context->count += (len << 3);
    if ((j + len) > 63) {
        FUNC1(&context->buffer[j], data, (i = 64 - j));
        FUNC0(context->state, context->buffer);
        for ( ; i + 63 < len; i += 64) {
            FUNC0(context->state, &data[i]);
        }
        j = 0;
    }
    else i = 0;
    FUNC1(&context->buffer[j], &data[i], len - i);
}