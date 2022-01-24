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

/* Variables and functions */
 scalar_t__ ERANGE ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,char const*,...) ; 
 char* FUNC2 (scalar_t__) ; 
 long long FUNC3 (char const*,char**,int) ; 

long long
FUNC4(const char *desc, const char *val,
    long long min, long long max, char *ebuf, size_t ebuflen)
{
	long long num, t;
	char	*expr;

	errno = 0;
	ebuf[0] = '\0';

	while (FUNC0((unsigned char)*val))	/* Skip leading space */
		val++;

	num = FUNC3(val, &expr, 10);
	if (errno == ERANGE)
		goto erange;			/* Overflow */

	if (expr == val)			/* No digits */
		goto badnum;

	switch (*expr) {
	case 'b':
		t = num;
		num *= 512;			/* 1 block */
		if (t > num)
			goto erange;
		++expr;
		break;
	case 'k':
		t = num;
		num *= 1024;			/* 1 kilobyte */
		if (t > num)
			goto erange;
		++expr;
		break;
	case 'm':
		t = num;
		num *= 1048576;			/* 1 megabyte */
		if (t > num)
			goto erange;
		++expr;
		break;
	case 'g':
		t = num;
		num *= 1073741824;		/* 1 gigabyte */
		if (t > num)
			goto erange;
		++expr;
		break;
	case 't':
		t = num;
		num *= 1099511627776LL;		/* 1 terabyte */
		if (t > num)
			goto erange;
		++expr;
		break;
	case 'w':
		t = num;
		num *= sizeof(int);		/* 1 word */
		if (t > num)
			goto erange;
		++expr;
		break;
	}

	switch (*expr) {
	case '\0':
		break;
	case '*':				/* Backward compatible */
	case 'x':
		t = num;
		num *= FUNC4(desc, expr + 1, min, max, ebuf, ebuflen);
		if (*ebuf != '\0')
			return (0);
		if (t > num) {
 erange:	 	
			FUNC1(ebuf, ebuflen,
			    "%s: %s", desc, FUNC2(ERANGE));
			return (0);
		}
		break;
	default:
 badnum:	FUNC1(ebuf, ebuflen,
		    "%s `%s': illegal number", desc, val);
		return (0);
	}
	if (num < min) {
			/* LONGLONG */
		FUNC1(ebuf, ebuflen, "%s %lld is less than %lld.",
		    desc, (long long)num, (long long)min);
		return (0);
	}
	if (num > max) {
			/* LONGLONG */
		FUNC1(ebuf, ebuflen,
		    "%s %lld is greater than %lld.",
		    desc, (long long)num, (long long)max);
		return (0);
	}
	*ebuf = '\0';
	return (num);
}