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
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ LARGE_MAXIMUM ; 
 scalar_t__ LARGE_MINIMUM ; 
 int /*<<< orphan*/ * LargeSieve ; 
 int /*<<< orphan*/  MODULI_TESTS_SIEVE ; 
 int /*<<< orphan*/  MODULI_TYPE_SOPHIE_GERMAIN ; 
 scalar_t__ SHIFT_BYTE ; 
 scalar_t__ SHIFT_MEGAWORD ; 
 scalar_t__ SHIFT_WORD ; 
 int SMALL_MAXIMUM ; 
 int /*<<< orphan*/ * SmallSieve ; 
 scalar_t__ TEST_MAXIMUM ; 
 scalar_t__ TEST_MINIMUM ; 
 scalar_t__ TEST_POWER ; 
 int TINY_NUMBER ; 
 int /*<<< orphan*/ * TinySieve ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int) ; 
 scalar_t__ FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * largebase ; 
 int largebits ; 
 scalar_t__ largememory ; 
 int largenumbers ; 
 int /*<<< orphan*/  largetries ; 
 scalar_t__ largewords ; 
 int /*<<< orphan*/  FUNC15 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int smallbase ; 
 scalar_t__ smallbits ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__*) ; 
 scalar_t__ tinybits ; 
 int /*<<< orphan*/ * FUNC20 (scalar_t__,int) ; 

int
FUNC21(FILE *out, u_int32_t memory, u_int32_t power, BIGNUM *start)
{
	BIGNUM *q;
	u_int32_t j, r, s, t;
	u_int32_t smallwords = TINY_NUMBER >> 6;
	u_int32_t tinywords = TINY_NUMBER >> 6;
	time_t time_start, time_stop;
	u_int32_t i;
	int ret = 0;

	largememory = memory;

	if (memory != 0 &&
	    (memory < LARGE_MINIMUM || memory > LARGE_MAXIMUM)) {
		FUNC12("Invalid memory amount (min %ld, max %ld)",
		    LARGE_MINIMUM, LARGE_MAXIMUM);
		return (-1);
	}

	/*
	 * Set power to the length in bits of the prime to be generated.
	 * This is changed to 1 less than the desired safe prime moduli p.
	 */
	if (power > TEST_MAXIMUM) {
		FUNC12("Too many bits: %u > %lu", power, TEST_MAXIMUM);
		return (-1);
	} else if (power < TEST_MINIMUM) {
		FUNC12("Too few bits: %u < %u", power, TEST_MINIMUM);
		return (-1);
	}
	power--; /* decrement before squaring */

	/*
	 * The density of ordinary primes is on the order of 1/bits, so the
	 * density of safe primes should be about (1/bits)**2. Set test range
	 * to something well above bits**2 to be reasonably sure (but not
	 * guaranteed) of catching at least one safe prime.
	 */
	largewords = ((power * power) >> (SHIFT_WORD - TEST_POWER));

	/*
	 * Need idea of how much memory is available. We don't have to use all
	 * of it.
	 */
	if (largememory > LARGE_MAXIMUM) {
		FUNC15("Limited memory: %u MB; limit %lu MB",
		    largememory, LARGE_MAXIMUM);
		largememory = LARGE_MAXIMUM;
	}

	if (largewords <= (largememory << SHIFT_MEGAWORD)) {
		FUNC15("Increased memory: %u MB; need %u bytes",
		    largememory, (largewords << SHIFT_BYTE));
		largewords = (largememory << SHIFT_MEGAWORD);
	} else if (largememory > 0) {
		FUNC15("Decreased memory: %u MB; want %u bytes",
		    largememory, (largewords << SHIFT_BYTE));
		largewords = (largememory << SHIFT_MEGAWORD);
	}

	TinySieve = FUNC20(tinywords, sizeof(u_int32_t));
	tinybits = tinywords << SHIFT_WORD;

	SmallSieve = FUNC20(smallwords, sizeof(u_int32_t));
	smallbits = smallwords << SHIFT_WORD;

	/*
	 * dynamically determine available memory
	 */
	while ((LargeSieve = FUNC9(largewords, sizeof(u_int32_t))) == NULL)
		largewords -= (1L << (SHIFT_MEGAWORD - 2)); /* 1/4 MB chunks */

	largebits = largewords << SHIFT_WORD;
	largenumbers = largebits * 2;	/* even numbers excluded */

	/* validation check: count the number of primes tried */
	largetries = 0;
	if ((q = FUNC5()) == NULL)
		FUNC13("BN_new failed");

	/*
	 * Generate random starting point for subprime search, or use
	 * specified parameter.
	 */
	if ((largebase = FUNC5()) == NULL)
		FUNC13("BN_new failed");
	if (start == NULL) {
		if (FUNC6(largebase, power, 1, 1) == 0)
			FUNC13("BN_rand failed");
	} else {
		if (FUNC4(largebase, start) == NULL)
			FUNC13("BN_copy: failed");
	}

	/* ensure odd */
	if (FUNC7(largebase, 0) == 0)
		FUNC13("BN_set_bit: failed");

	FUNC19(&time_start);

	FUNC15("%.24s Sieve next %u plus %u-bit", FUNC10(&time_start),
	    largenumbers, power);
	FUNC11("start point: 0x%s", FUNC3(largebase));

	/*
	 * TinySieve
	 */
	for (i = 0; i < tinybits; i++) {
		if (FUNC1(TinySieve, i))
			continue; /* 2*i+3 is composite */

		/* The next tiny prime */
		t = 2 * i + 3;

		/* Mark all multiples of t */
		for (j = i + t; j < tinybits; j += t)
			FUNC0(TinySieve, j);

		FUNC18(t);
	}

	/*
	 * Start the small block search at the next possible prime. To avoid
	 * fencepost errors, the last pass is skipped.
	 */
	for (smallbase = TINY_NUMBER + 3;
	    smallbase < (SMALL_MAXIMUM - TINY_NUMBER);
	    smallbase += TINY_NUMBER) {
		for (i = 0; i < tinybits; i++) {
			if (FUNC1(TinySieve, i))
				continue; /* 2*i+3 is composite */

			/* The next tiny prime */
			t = 2 * i + 3;
			r = smallbase % t;

			if (r == 0) {
				s = 0; /* t divides into smallbase exactly */
			} else {
				/* smallbase+s is first entry divisible by t */
				s = t - r;
			}

			/*
			 * The sieve omits even numbers, so ensure that
			 * smallbase+s is odd. Then, step through the sieve
			 * in increments of 2*t
			 */
			if (s & 1)
				s += t; /* Make smallbase+s odd, and s even */

			/* Mark all multiples of 2*t */
			for (s /= 2; s < smallbits; s += t)
				FUNC0(SmallSieve, s);
		}

		/*
		 * SmallSieve
		 */
		for (i = 0; i < smallbits; i++) {
			if (FUNC1(SmallSieve, i))
				continue; /* 2*i+smallbase is composite */

			/* The next small prime */
			FUNC18((2 * i) + smallbase);
		}

		FUNC16(SmallSieve, 0, smallwords << SHIFT_BYTE);
	}

	FUNC19(&time_stop);

	FUNC15("%.24s Sieved with %u small primes in %lld seconds",
	    FUNC10(&time_stop), largetries, (long long)(time_stop - time_start));

	for (j = r = 0; j < largebits; j++) {
		if (FUNC1(LargeSieve, j))
			continue; /* Definitely composite, skip */

		FUNC11("test q = largebase+%u", 2 * j);
		if (FUNC8(q, 2 * j) == 0)
			FUNC13("BN_set_word failed");
		if (FUNC2(q, q, largebase) == 0)
			FUNC13("BN_add failed");
		if (FUNC17(out, MODULI_TYPE_SOPHIE_GERMAIN,
		    MODULI_TESTS_SIEVE, largetries,
		    (power - 1) /* MSB */, (0), q) == -1) {
			ret = -1;
			break;
		}

		r++; /* count q */
	}

	FUNC19(&time_stop);

	FUNC14(LargeSieve);
	FUNC14(SmallSieve);
	FUNC14(TinySieve);

	FUNC15("%.24s Found %u candidates", FUNC10(&time_stop), r);

	return (ret);
}