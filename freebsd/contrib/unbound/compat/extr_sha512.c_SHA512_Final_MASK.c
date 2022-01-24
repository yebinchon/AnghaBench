#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sha2_word64 ;
typedef  int /*<<< orphan*/  sha2_byte ;
struct TYPE_5__ {int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(sha2_byte digest[], SHA512_CTX* context) {
	sha2_word64	*d = (sha2_word64*)digest;

	/* Sanity check: */
	FUNC4(context != (SHA512_CTX*)0);

	/* If no digest buffer is passed, we don't bother doing this: */
	if (digest != (sha2_byte*)0) {
		FUNC3(context);

		/* Save the hash data for output: */
#if BYTE_ORDER == LITTLE_ENDIAN
		{
			/* Convert TO host byte order */
			int	j;
			for (j = 0; j < 8; j++) {
				FUNC2(context->state[j],context->state[j]);
				*d++ = context->state[j];
			}
		}
#else
		MEMCPY_BCOPY(d, context->state, SHA512_DIGEST_LENGTH);
#endif
	}

	/* Zero out state data */
	FUNC1(context, sizeof(SHA512_CTX));
}