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
typedef  int u_short ;
typedef  int u_long ;
typedef  int u_fp ;
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

char *
FUNC2(
	u_fp fpv,
	int neg,
	short ndec,
	int msec
	)
{
	register u_char *cp, *cpend;
	register u_long val;
	register short dec;
	u_char cbuf[12];
	u_char *cpdec;
	char *buf;
	char *bp;

	/*
	 * Get a string buffer before starting
	 */
	FUNC0(buf);

	/*
	 * Zero out the buffer
	 */
	FUNC1(cbuf);

	/*
	 * Set the pointers to point at the first
	 * decimal place.  Get a local copy of the value.
	 */
	cp = cpend = &cbuf[5];
	val = fpv;

	/*
	 * If we have to, decode the integral part
	 */
	if (!(val & 0xffff0000))
	    cp--;
	else {
		register u_short sv = (u_short)(val >> 16);
		register u_short tmp;
		register u_short ten = 10;

		do {
			tmp = sv;
			sv = (u_short) (sv/ten);
			*(--cp) = (u_char)(tmp - ((sv<<3) + (sv<<1)));
		} while (sv != 0);
	}

	/*
	 * Figure out how much of the fraction to do
	 */
	if (msec) {
		dec = (short)(ndec + 3);
		if (dec < 3)
		    dec = 3;
		cpdec = &cbuf[8];
	} else {
		dec = ndec;
		cpdec = cpend;
	}

	if (dec > 6)
	    dec = 6;
	
	if (dec > 0) {
		do {
			val &= 0xffff;
			val = (val << 3) + (val << 1);
			*cpend++ = (u_char)(val >> 16);
		} while (--dec > 0);
	}

	if (val & 0x8000) {
		register u_char *tp;
		/*
		 * Round it. Ick.
		 */
		tp = cpend;
		*(--tp) += 1;
		while (*tp >= 10) {
			*tp = 0;
			*(--tp) += 1;
		}
	}

	/*
	 * Remove leading zeroes if necessary
	 */
	while (cp < (cpdec -1) && *cp == 0)
	    cp++;
	
	/*
	 * Copy it into the buffer, asciizing as we go.
	 */
	bp = buf;
	if (neg)
	    *bp++ = '-';
	
	while (cp < cpend) {
		if (cp == cpdec)
		    *bp++ = '.';
		*bp++ = (char)(*cp++ + '0');
	}
	*bp = '\0';
	return buf;
}