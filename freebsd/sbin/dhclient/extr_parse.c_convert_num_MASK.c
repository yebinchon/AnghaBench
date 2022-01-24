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
typedef  unsigned char u_int8_t ;
typedef  unsigned int u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7(unsigned char *buf, char *str, unsigned base, int size)
{
	bool negative = false;
	unsigned tval, max;
	u_int32_t val = 0;
	char *ptr = str;

	if (*ptr == '-') {
		negative = true;
		ptr++;
	}

	/* If base wasn't specified, figure it out from the data. */
	if (!base) {
		if (ptr[0] == '0') {
			if (ptr[1] == 'x') {
				base = 16;
				ptr += 2;
			} else if (FUNC0(ptr[1]) && FUNC1(ptr[1])) {
				base = 8;
				ptr += 1;
			} else
				base = 10;
		} else
			base = 10;
	}

	do {
		tval = *ptr++;
		/* XXX assumes ASCII... */
		if (tval >= 'a')
			tval = tval - 'a' + 10;
		else if (tval >= 'A')
			tval = tval - 'A' + 10;
		else if (tval >= '0')
			tval -= '0';
		else {
			FUNC6("Bogus number: %s.", str);
			break;
		}
		if (tval >= base) {
			FUNC6("Bogus number: %s: digit %d not in base %d",
			    str, tval, base);
			break;
		}
		val = val * base + tval;
	} while (*ptr);

	if (negative)
		max = (1 << (size - 1));
	else
		max = (1 << (size - 1)) + ((1 << (size - 1)) - 1);
	if (val > max) {
		switch (base) {
		case 8:
			FUNC6("value %s%o exceeds max (%d) for precision.",
			    negative ? "-" : "", val, max);
			break;
		case 16:
			FUNC6("value %s%x exceeds max (%d) for precision.",
			    negative ? "-" : "", val, max);
			break;
		default:
			FUNC6("value %s%u exceeds max (%d) for precision.",
			    negative ? "-" : "", val, max);
			break;
		}
	}

	if (negative)
		switch (size) {
		case 8:
			*buf = -(unsigned long)val;
			break;
		case 16:
			FUNC3(buf, -(unsigned long)val);
			break;
		case 32:
			FUNC2(buf, -(unsigned long)val);
			break;
		default:
			FUNC6("Unexpected integer size: %d", size);
			break;
		}
	else
		switch (size) {
		case 8:
			*buf = (u_int8_t)val;
			break;
		case 16:
			FUNC5(buf, (u_int16_t)val);
			break;
		case 32:
			FUNC4(buf, val);
			break;
		default:
			FUNC6("Unexpected integer size: %d", size);
			break;
		}
}