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
typedef  int uint64_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long double*) ; 
 long double FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,long double) ; 
 int /*<<< orphan*/  FE_UNDERFLOW ; 
 scalar_t__ FUNC4 (int) ; 
 long double FUNC5 (int) ; 
 long double FUNC6 (int) ; 
 long double FUNC7 (int) ; 
 int L2I ; 
 long double P2 ; 
 long double P3 ; 
 long double P4 ; 
 long double P5 ; 
 long double P6 ; 
 long double P7 ; 
 long double P8 ; 
 int /*<<< orphan*/  FUNC8 (long double,long double) ; 
 int /*<<< orphan*/  FUNC9 (long double) ; 
 int /*<<< orphan*/  FUNC10 (float,int) ; 
 int /*<<< orphan*/  FUNC11 (long double,int) ; 
 int /*<<< orphan*/  FUNC12 (long double,long double,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 long double ln2_hi ; 
 long double ln2_lo ; 
 int zero ; 

long double
FUNC15(long double x)
{
	long double d, d_hi, d_lo, dk, f_lo, val_hi, val_lo, z;
	long double f_hi, twopminusk;
	uint64_t ix, lx;
	int i, k;
	int16_t ax, hx;

	FUNC0(&x);
	FUNC3(hx, lx, x);
	if (hx < 0x3fff) {		/* x < 1, or x neg NaN */
		ax = hx & 0x7fff;
		if (ax >= 0x3fff) {	/* x <= -1, or x neg NaN */
			if (ax == 0x3fff && lx == 0x8000000000000000ULL)
				FUNC9(-1 / zero);	/* log1p(-1) = -Inf */
			/* log1p(x < 1, or x [pseudo-]NaN) = qNaN: */
			FUNC9((x - x) / (x - x));
		}
		if (ax <= 0x3fbe) {	/* |x| < 2**-64 */
			if ((int)x == 0)
				FUNC9(x);	/* x with inexact if x != 0 */
		}
		f_hi = 1;
		f_lo = x;
	} else if (hx >= 0x7fff) {	/* x +Inf or non-neg NaN */
		FUNC9(x + x);		/* log1p(Inf or NaN) = Inf or qNaN */
					/* log1p(pseudo-Inf) = qNaN */
					/* log1p(pseudo-NaN) = qNaN */
					/* log1p(unnormal) = qNaN */
	} else if (hx < 0x407f) {	/* 1 <= x < 2**128 */
		f_hi = x;
		f_lo = 1;
	} else {			/* 2**128 <= x < +Inf */
		f_hi = x;
		f_lo = 0;		/* avoid underflow of the P5 term */
	}
	FUNC2();
	x = f_hi + f_lo;
	f_lo = (f_hi - x) + f_lo;

	FUNC3(hx, lx, x);
	k = -16383;

	k += hx;
	ix = lx & 0x7fffffffffffffffULL;
	dk = k;

	FUNC11(x, 0x3fff);
	twopminusk = 1;
	FUNC11(twopminusk, 0x7ffe - (hx & 0x7fff));
	f_lo *= twopminusk;

	i = (ix + (1LL << (L2I - 2))) >> (L2I - 1);

	/*
	 * x*G(i)-1 (with a reduced x) can be represented exactly, as
	 * above, but now we need to evaluate the polynomial on d =
	 * (x+f_lo)*G(i)-1 and extra precision is needed for that.
	 * Since x+x_lo is a hi+lo decomposition and subtracting 1
	 * doesn't lose too many bits, an inexact calculation for
	 * f_lo*G(i) is good enough.
	 */
	if (0)
		d_hi = x * FUNC6(i) - 1;
	else {
#ifdef USE_UTAB
		d_hi = (x - H(i)) * G(i) + E(i);
#else
		long double x_hi, x_lo;
		float fx_hi;

		FUNC10(fx_hi, (lx >> 40) | 0x3f800000);
		x_hi = fx_hi;
		x_lo = x - x_hi;
		d_hi = x_hi * FUNC6(i) - 1 + x_lo * FUNC6(i);
#endif
	}
	d_lo = f_lo * FUNC6(i);

	/*
	 * This is _2sumF(d_hi, d_lo) inlined.  The condition
	 * (d_hi == 0 || |d_hi| >= |d_lo|) for using _2sumF() is not
	 * always satisifed, so it is not clear that this works, but
	 * it works in practice.  It works even if it gives a wrong
	 * normalized d_lo, since |d_lo| > |d_hi| implies that i is
	 * nonzero and d is tiny, so the F(i) term dominates d_lo.
	 * In float precision:
	 * (By exhaustive testing, the worst case is d_hi = 0x1.bp-25.
	 * And if d is only a little tinier than that, we would have
	 * another underflow problem for the P3 term; this is also ruled
	 * out by exhaustive testing.)
	 */
	d = d_hi + d_lo;
	d_lo = d_hi - d + d_lo;
	d_hi = d;

	z = d * d;
	val_lo = z * d * z * (z * (d * P8 + P7) + (d * P6 + P5)) +
	    (FUNC5(i) + dk * ln2_lo + d_lo + z * d * (d * P4 + P3)) + z * P2;
	val_hi = d_hi;
#ifdef DEBUG
	if (fetestexcept(FE_UNDERFLOW))
		breakpoint();
#endif

	FUNC12(val_hi, val_lo, FUNC4(i) + dk * ln2_hi);
	FUNC8(val_hi, val_lo);
}