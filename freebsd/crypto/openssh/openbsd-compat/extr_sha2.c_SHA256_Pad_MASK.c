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
struct TYPE_3__ {int bitcount; int* buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int SHA256_BLOCK_LENGTH ; 
 unsigned int SHA256_SHORT_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,unsigned int) ; 

void
FUNC3(SHA256_CTX *context)
{
	unsigned int	usedspace;

	usedspace = (context->bitcount >> 3) % SHA256_BLOCK_LENGTH;
	if (usedspace > 0) {
		/* Begin padding with a 1 bit: */
		context->buffer[usedspace++] = 0x80;

		if (usedspace <= SHA256_SHORT_BLOCK_LENGTH) {
			/* Set-up for the last transform: */
			FUNC2(&context->buffer[usedspace], 0,
			    SHA256_SHORT_BLOCK_LENGTH - usedspace);
		} else {
			if (usedspace < SHA256_BLOCK_LENGTH) {
				FUNC2(&context->buffer[usedspace], 0,
				    SHA256_BLOCK_LENGTH - usedspace);
			}
			/* Do second-to-last transform: */
			FUNC1(context->state, context->buffer);

			/* Prepare for last transform: */
			FUNC2(context->buffer, 0, SHA256_SHORT_BLOCK_LENGTH);
		}
	} else {
		/* Set-up for the last transform: */
		FUNC2(context->buffer, 0, SHA256_SHORT_BLOCK_LENGTH);

		/* Begin padding with a 1 bit: */
		*context->buffer = 0x80;
	}
	/* Store the length of input data (in bits) in big endian format: */
	FUNC0(&context->buffer[SHA256_SHORT_BLOCK_LENGTH],
	    context->bitcount);

	/* Final transform: */
	FUNC1(context->state, context->buffer);

	/* Clean up: */
	usedspace = 0;
}