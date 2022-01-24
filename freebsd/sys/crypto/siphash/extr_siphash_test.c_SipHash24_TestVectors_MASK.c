#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  SIPHASH_CTX ;

/* Variables and functions */
 int MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/ * vectors ; 

int
FUNC6(void)
{
	int i, fail = 0;
	uint8_t in[MAXLEN], out[8], k[16];
	SIPHASH_CTX ctx;

	/* Initialize key. */
	for (i = 0; i < 16; ++i)
		k[i] = i;

	/* Step through differnet length. */
	for (i = 0; i < MAXLEN; ++i) {
		in[i] = i;

		FUNC0(&ctx);
		FUNC2(&ctx, k);
		FUNC3(&ctx, in, i);
		FUNC1(out, &ctx);

		if (FUNC4(out, vectors[i], 8))
#if 0
			printf("%i: test vector failed\n", i);
		else
			printf("%i: test vector correct\n", i);
#else
			fail++;
#endif
	}

	return ((fail == 0));
}