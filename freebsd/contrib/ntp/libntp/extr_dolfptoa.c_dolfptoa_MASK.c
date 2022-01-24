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
typedef  scalar_t__ u_int32 ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  cbuf ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

char *
FUNC4(
	u_int32 fpi,
	u_int32 fpv,
	int neg,
	short ndec,
	int msec
	)
{
	u_char *cp, *cpend, *cpdec;
	int dec;
	u_char cbuf[24];
	char *buf, *bp;

	/*
	 * Get a string buffer before starting
	 */
	FUNC0(buf);

	/*
	 * Zero the character buffer
	 */
	FUNC3(cbuf);

	/*
	 * Work on the integral part. This should work reasonable on
	 * all machines with 32 bit arithmetic. Please note that 32 bits
	 * can *always* be represented with at most 10 decimal digits,
	 * including a possible rounding from the fractional part.
	 */
	cp = cpend = cpdec = &cbuf[10];
	for (dec = (int)(cp - cbuf); dec > 0 && fpi != 0; dec--) {
		/* can add another digit */
		u_int32 digit;
		
		digit  = fpi;
		fpi   /= 10U;
		digit -= (fpi << 3) + (fpi << 1); /* i*10 */
		*--cp  = (u_char)digit;
	}

	/*
	 * Done that, now deal with the problem of the fraction.  First
	 * determine the number of decimal places.
	 */
	dec = ndec;
	if (dec < 0)
		dec = 0;
	if (msec) {
		dec   += 3;
		cpdec += 3;
	}
	if ((size_t)dec > sizeof(cbuf) - (cpend - cbuf))
		dec = (int)(sizeof(cbuf) - (cpend - cbuf));
	
	/*
	 * If there's a fraction to deal with, do so.
	 */
	for (/*NOP*/;  dec > 0 && fpv != 0;  dec--)  {
		u_int32 digit, tmph, tmpl;
		
		/*
		 * The scheme here is to multiply the fraction
		 * (0.1234...) by ten.  This moves a junk of BCD into
		 * the units part.  record that and iterate.
		 * multiply by shift/add in two dwords.
		 */
		digit = 0;
		FUNC2(digit, fpv);
		tmph = digit;
		tmpl = fpv;
		FUNC2(digit, fpv);
		FUNC2(digit, fpv);
		FUNC1(digit, fpv, tmph, tmpl);
		*cpend++ = (u_char)digit;
	}

	/* decide whether to round or simply extend by zeros */
	if (dec > 0) {
		/* only '0' digits left -- just reposition end */
		cpend += dec; 
	} else {
		/* some bits remain in 'fpv'; do round */
		u_char *tp    = cpend;
		int     carry = ((fpv & 0x80000000) != 0);

		for (dec = (int)(tp - cbuf);  carry && dec > 0;  dec--) {
			*--tp += 1;
			if (*tp == 10)
				*tp = 0;
			else 
				carry = FALSE;
		}

		if (tp < cp) /* rounding from 999 to 1000 or similiar? */
			cp = tp;
	}

	/*
	 * We've now got the fraction in cbuf[], with cp pointing at
	 * the first character, cpend pointing past the last, and
	 * cpdec pointing at the first character past the decimal.
	 * Remove leading zeros, then format the number into the
	 * buffer.
	 */
	while (cp < cpdec && *cp == 0)
		cp++;
	if (cp >= cpdec)
		cp = cpdec - 1;

	bp = buf;
	if (neg)
		*bp++ = '-';
	while (cp < cpend) {
		if (cp == cpdec)
			*bp++ = '.';
		*bp++ = (char)(*cp++) + '0';
	}
	*bp = '\0';

	/*
	 * Done!
	 */
	return buf;
}