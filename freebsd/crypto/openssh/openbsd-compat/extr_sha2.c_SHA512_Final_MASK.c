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
typedef  int /*<<< orphan*/  u_int8_t ;
struct TYPE_5__ {int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(u_int8_t digest[SHA512_DIGEST_LENGTH], SHA512_CTX *context)
{
	FUNC1(context);

	/* If no digest buffer is passed, we don't bother doing this: */
	if (digest != NULL) {
#if BYTE_ORDER == LITTLE_ENDIAN
		int	i;

		/* Convert TO host byte order */
		for (i = 0; i < 8; i++)
			FUNC0(digest + i * 8, context->state[i]);
#else
		memcpy(digest, context->state, SHA512_DIGEST_LENGTH);
#endif
		FUNC3(context, 0, sizeof(*context));
	}
}