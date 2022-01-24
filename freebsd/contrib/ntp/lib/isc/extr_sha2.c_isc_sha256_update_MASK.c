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
typedef  int /*<<< orphan*/  const isc_uint8_t ;
typedef  int /*<<< orphan*/  isc_uint32_t ;
struct TYPE_4__ {int bitcount; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ isc_sha256_t ;

/* Variables and functions */
 int ISC_SHA256_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

void
FUNC4(isc_sha256_t *context, const isc_uint8_t *data, size_t len) {
	unsigned int	freespace, usedspace;

	if (len == 0U) {
		/* Calling with no data is valid - we do nothing */
		return;
	}

	/* Sanity check: */
	FUNC1(context != (isc_sha256_t *)0 && data != (isc_uint8_t*)0);

	usedspace = (unsigned int)((context->bitcount >> 3) %
				   ISC_SHA256_BLOCK_LENGTH);
	if (usedspace > 0) {
		/* Calculate how much free space is available in the buffer */
		freespace = ISC_SHA256_BLOCK_LENGTH - usedspace;

		if (len >= freespace) {
			/* Fill the buffer completely and process it */
			FUNC3(&context->buffer[usedspace], data, freespace);
			context->bitcount += freespace << 3;
			len -= freespace;
			data += freespace;
			FUNC2(context,
					     (isc_uint32_t*)context->buffer);
		} else {
			/* The buffer is not yet full */
			FUNC3(&context->buffer[usedspace], data, len);
			context->bitcount += len << 3;
			/* Clean up: */
			usedspace = freespace = 0;
			/* Avoid compiler warnings: */
			FUNC0(usedspace); FUNC0(freespace);
			return;
		}
	}
	while (len >= ISC_SHA256_BLOCK_LENGTH) {
		/* Process as many complete blocks as we can */
		FUNC3(context->buffer, data, ISC_SHA256_BLOCK_LENGTH);
		FUNC2(context, (isc_uint32_t*)context->buffer);
		context->bitcount += ISC_SHA256_BLOCK_LENGTH << 3;
		len -= ISC_SHA256_BLOCK_LENGTH;
		data += ISC_SHA256_BLOCK_LENGTH;
	}
	if (len > 0U) {
		/* There's left-overs, so save 'em */
		FUNC3(context->buffer, data, len);
		context->bitcount += len << 3;
	}
	/* Clean up: */
	usedspace = freespace = 0;
	/* Avoid compiler warnings: */
	FUNC0(usedspace); FUNC0(freespace);
}