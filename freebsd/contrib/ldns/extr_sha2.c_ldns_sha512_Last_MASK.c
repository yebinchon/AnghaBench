#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sha2_word64 ;
struct TYPE_5__ {int* bitcount; int* buffer; } ;
typedef  TYPE_1__ ldns_sha512_CTX ;
struct TYPE_6__ {int* theChars; int* theLongs; } ;
typedef  TYPE_2__ ldns_sha2_buffer_union ;

/* Variables and functions */
 int LDNS_SHA512_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 size_t ldns_sha512_SHORT_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(ldns_sha512_CTX* context) {
	size_t usedspace;
	ldns_sha2_buffer_union cast_var;

	usedspace = (context->bitcount[0] >> 3) % LDNS_SHA512_BLOCK_LENGTH;
#if BYTE_ORDER == LITTLE_ENDIAN
	/* Convert FROM host byte order */
	FUNC1(context->bitcount[0],context->bitcount[0]);
	FUNC1(context->bitcount[1],context->bitcount[1]);
#endif
	if (usedspace > 0) {
		/* Begin padding with a 1 bit: */
		context->buffer[usedspace++] = 0x80;

		if (usedspace <= ldns_sha512_SHORT_BLOCK_LENGTH) {
			/* Set-up for the last transform: */
			FUNC0(&context->buffer[usedspace], ldns_sha512_SHORT_BLOCK_LENGTH - usedspace);
		} else {
			if (usedspace < LDNS_SHA512_BLOCK_LENGTH) {
				FUNC0(&context->buffer[usedspace], LDNS_SHA512_BLOCK_LENGTH - usedspace);
			}
			/* Do second-to-last transform: */
			FUNC2(context, (sha2_word64*)context->buffer);

			/* And set-up for the last transform: */
			FUNC0(context->buffer, LDNS_SHA512_BLOCK_LENGTH - 2);
		}
	} else {
		/* Prepare for final transform: */
		FUNC0(context->buffer, ldns_sha512_SHORT_BLOCK_LENGTH);

		/* Begin padding with a 1 bit: */
		*context->buffer = 0x80;
	}
	/* Store the length of input data (in bits): */
	cast_var.theChars = context->buffer;
	cast_var.theLongs[ldns_sha512_SHORT_BLOCK_LENGTH / 8] = context->bitcount[1];
	cast_var.theLongs[ldns_sha512_SHORT_BLOCK_LENGTH / 8 + 1] = context->bitcount[0];

	/* final transform: */
	FUNC2(context, (sha2_word64*)context->buffer);
}