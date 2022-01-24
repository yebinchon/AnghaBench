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
typedef  int /*<<< orphan*/  isc_uint8_t ;
typedef  int /*<<< orphan*/  isc_uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ isc_sha512_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_SHA512_DIGESTLENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(isc_uint8_t digest[], isc_sha512_t *context) {
	isc_uint64_t	*d = (isc_uint64_t*)digest;

	/* Sanity check: */
	FUNC0(context != (isc_sha512_t *)0);

	/* If no digest buffer is passed, we don't bother doing this: */
	if (digest != (isc_uint8_t*)0) {
		FUNC2(context);

		/* Save the hash data for output: */
#if BYTE_ORDER == LITTLE_ENDIAN
		{
			/* Convert TO host byte order */
			int	j;
			for (j = 0; j < 8; j++) {
				FUNC1(context->state[j],context->state[j]);
				*d++ = context->state[j];
			}
		}
#else
		memcpy(d, context->state, ISC_SHA512_DIGESTLENGTH);
#endif
	}

	/* Zero out state data */
	FUNC4(context, 0, sizeof(*context));
}