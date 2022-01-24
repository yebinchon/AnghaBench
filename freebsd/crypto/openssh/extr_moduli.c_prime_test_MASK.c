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
typedef  unsigned long u_int32_t ;
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC11 (unsigned long,unsigned long) ; 
 unsigned long MODULI_TESTS_COMPOSITE ; 
 unsigned long MODULI_TESTS_MILLER_RABIN ; 
#define  MODULI_TYPE_SAFE 133 
#define  MODULI_TYPE_SCHNORR 132 
#define  MODULI_TYPE_SOPHIE_GERMAIN 131 
#define  MODULI_TYPE_STRONG 130 
#define  MODULI_TYPE_UNKNOWN 129 
#define  MODULI_TYPE_UNSTRUCTURED 128 
 scalar_t__ QLINESIZE ; 
 unsigned long QSIZE_MINIMUM ; 
 unsigned long TRIAL_MINIMUM ; 
 unsigned long ULONG_MAX ; 
 unsigned long FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/ * FUNC19 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC22 (unsigned long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int const,unsigned long,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC24 (char*) ; 
 int FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 unsigned long FUNC27 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (char*,unsigned long) ; 
 char* FUNC31 (scalar_t__) ; 

int
FUNC32(FILE *in, FILE *out, u_int32_t trials, u_int32_t generator_wanted,
    char *checkpoint_file, unsigned long start_lineno, unsigned long num_lines)
{
	BIGNUM *q, *p, *a;
	BN_CTX *ctx;
	char *cp, *lp;
	u_int32_t count_in = 0, count_out = 0, count_possible = 0;
	u_int32_t generator_known, in_tests, in_tries, in_type, in_size;
	unsigned long last_processed = 0, end_lineno;
	time_t time_start, time_stop;
	int res;

	if (trials < TRIAL_MINIMUM) {
		FUNC17("Minimum primality trials is %d", TRIAL_MINIMUM);
		return (-1);
	}

	if (num_lines == 0)
		end_lineno = FUNC12(in);
	else
		end_lineno = start_lineno + num_lines;

	FUNC28(&time_start);

	if ((p = FUNC8()) == NULL)
		FUNC18("BN_new failed");
	if ((q = FUNC8()) == NULL)
		FUNC18("BN_new failed");
	if ((ctx = FUNC1()) == NULL)
		FUNC18("BN_CTX_new failed");

	FUNC15("%.24s Final %u Miller-Rabin trials (%x generator)",
	    FUNC13(&time_start), trials, generator_wanted);

	if (checkpoint_file != NULL)
		last_processed = FUNC24(checkpoint_file);
	last_processed = start_lineno = FUNC11(last_processed, start_lineno);
	if (end_lineno == ULONG_MAX)
		FUNC14("process from line %lu from pipe", last_processed);
	else
		FUNC14("process from line %lu to line %lu", last_processed,
		    end_lineno);

	res = 0;
	lp = FUNC31(QLINESIZE + 1);
	while (FUNC19(lp, QLINESIZE + 1, in) != NULL && count_in < end_lineno) {
		count_in++;
		if (count_in <= last_processed) {
			FUNC16("skipping line %u, before checkpoint or "
			    "specified start line", count_in);
			continue;
		}
		if (checkpoint_file != NULL)
			FUNC30(checkpoint_file, count_in);
		FUNC22(start_lineno, count_in, end_lineno);
		if (FUNC25(lp) < 14 || *lp == '!' || *lp == '#') {
			FUNC15("%10u: comment or short line", count_in);
			continue;
		}

		/* XXX - fragile parser */
		/* time */
		cp = &lp[14];	/* (skip) */

		/* type */
		in_type = FUNC27(cp, &cp, 10);

		/* tests */
		in_tests = FUNC27(cp, &cp, 10);

		if (in_tests & MODULI_TESTS_COMPOSITE) {
			FUNC15("%10u: known composite", count_in);
			continue;
		}

		/* tries */
		in_tries = FUNC27(cp, &cp, 10);

		/* size (most significant bit) */
		in_size = FUNC27(cp, &cp, 10);

		/* generator (hex) */
		generator_known = FUNC27(cp, &cp, 16);

		/* Skip white space */
		cp += FUNC26(cp, " ");

		/* modulus (hex) */
		switch (in_type) {
		case MODULI_TYPE_SOPHIE_GERMAIN:
			FUNC15("%10u: (%u) Sophie-Germain", count_in, in_type);
			a = q;
			if (FUNC4(&a, cp) == 0)
				FUNC18("BN_hex2bn failed");
			/* p = 2*q + 1 */
			if (FUNC6(p, q, 1) == 0)
				FUNC18("BN_lshift failed");
			if (FUNC2(p, 1) == 0)
				FUNC18("BN_add_word failed");
			in_size += 1;
			generator_known = 0;
			break;
		case MODULI_TYPE_UNSTRUCTURED:
		case MODULI_TYPE_SAFE:
		case MODULI_TYPE_SCHNORR:
		case MODULI_TYPE_STRONG:
		case MODULI_TYPE_UNKNOWN:
			FUNC15("%10u: (%u)", count_in, in_type);
			a = p;
			if (FUNC4(&a, cp) == 0)
				FUNC18("BN_hex2bn failed");
			/* q = (p-1) / 2 */
			if (FUNC10(q, p, 1) == 0)
				FUNC18("BN_rshift failed");
			break;
		default:
			FUNC15("Unknown prime type");
			break;
		}

		/*
		 * due to earlier inconsistencies in interpretation, check
		 * the proposed bit size.
		 */
		if ((u_int32_t)FUNC9(p) != (in_size + 1)) {
			FUNC15("%10u: bit size %u mismatch", count_in, in_size);
			continue;
		}
		if (in_size < QSIZE_MINIMUM) {
			FUNC15("%10u: bit size %u too short", count_in, in_size);
			continue;
		}

		if (in_tests & MODULI_TESTS_MILLER_RABIN)
			in_tries += trials;
		else
			in_tries = trials;

		/*
		 * guess unknown generator
		 */
		if (generator_known == 0) {
			if (FUNC7(p, 24) == 11)
				generator_known = 2;
			else if (FUNC7(p, 12) == 5)
				generator_known = 3;
			else {
				u_int32_t r = FUNC7(p, 10);

				if (r == 3 || r == 7)
					generator_known = 5;
			}
		}
		/*
		 * skip tests when desired generator doesn't match
		 */
		if (generator_wanted > 0 &&
		    generator_wanted != generator_known) {
			FUNC15("%10u: generator %d != %d",
			    count_in, generator_known, generator_wanted);
			continue;
		}

		/*
		 * Primes with no known generator are useless for DH, so
		 * skip those.
		 */
		if (generator_known == 0) {
			FUNC15("%10u: no known generator", count_in);
			continue;
		}

		count_possible++;

		/*
		 * The (1/4)^N performance bound on Miller-Rabin is
		 * extremely pessimistic, so don't spend a lot of time
		 * really verifying that q is prime until after we know
		 * that p is also prime. A single pass will weed out the
		 * vast majority of composite q's.
		 */
		if (FUNC5(q, 1, ctx, NULL) <= 0) {
			FUNC14("%10u: q failed first possible prime test",
			    count_in);
			continue;
		}

		/*
		 * q is possibly prime, so go ahead and really make sure
		 * that p is prime. If it is, then we can go back and do
		 * the same for q. If p is composite, chances are that
		 * will show up on the first Rabin-Miller iteration so it
		 * doesn't hurt to specify a high iteration count.
		 */
		if (!FUNC5(p, trials, ctx, NULL)) {
			FUNC14("%10u: p is not prime", count_in);
			continue;
		}
		FUNC14("%10u: p is almost certainly prime", count_in);

		/* recheck q more rigorously */
		if (!FUNC5(q, trials - 1, ctx, NULL)) {
			FUNC14("%10u: q is not prime", count_in);
			continue;
		}
		FUNC14("%10u: q is almost certainly prime", count_in);

		if (FUNC23(out, MODULI_TYPE_SAFE,
		    in_tests | MODULI_TESTS_MILLER_RABIN,
		    in_tries, in_size, generator_known, p)) {
			res = -1;
			break;
		}

		count_out++;
	}

	FUNC28(&time_stop);
	FUNC20(lp);
	FUNC3(p);
	FUNC3(q);
	FUNC0(ctx);

	if (checkpoint_file != NULL)
		FUNC29(checkpoint_file);

	FUNC21("%.24s Found %u safe primes of %u candidates in %ld seconds",
	    FUNC13(&time_stop), count_out, count_possible,
	    (long) (time_stop - time_start));

	return (res);
}