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
struct lconv {char* mon_grouping; char* mon_decimal_point; char* decimal_point; char* mon_thousands_sep; char* thousands_sep; int int_frac_digits; int frac_digits; } ;

/* Variables and functions */
 int CHAR_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GRPSEP ; 
 int NEED_GROUPING ; 
 int USE_INTL_CURRENCY ; 
 int FUNC1 (char**,char*,int,int,double) ; 
 char* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char*) ; 
 struct lconv* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static char *
FUNC10(double value, int *flags,
			int left_prec, int right_prec, int pad_char) {

	char		*rslt;
	char		*avalue;
	int		avalue_size;

	size_t		bufsize;
	char		*bufend;

	int		padded;

	struct lconv	*lc = FUNC5();
	char		*grouping;
	const char	*decimal_point;
	const char	*thousands_sep;
	size_t		decimal_point_size;
	size_t		thousands_sep_size;

	int groups = 0;

	grouping = lc->mon_grouping;
	decimal_point = lc->mon_decimal_point;
	if (*decimal_point == '\0')
		decimal_point = lc->decimal_point;
	thousands_sep = lc->mon_thousands_sep;
	if (*thousands_sep == '\0')
		thousands_sep = lc->thousands_sep;

	decimal_point_size = FUNC9(decimal_point);
	thousands_sep_size = FUNC9(thousands_sep);

	/* fill left_prec with default value */
	if (left_prec == -1)
		left_prec = 0;

	/* fill right_prec with default value */
	if (right_prec == -1) {
                if (*flags & USE_INTL_CURRENCY)
                        right_prec = lc->int_frac_digits;
                else
                        right_prec = lc->frac_digits;

		if (right_prec == CHAR_MAX)	/* POSIX locale ? */
			right_prec = 2;
	}

	if (*flags & NEED_GROUPING)
		left_prec += FUNC4(left_prec, grouping);

	/* convert to string */
	avalue_size = FUNC1(&avalue, "%*.*f", left_prec + right_prec + 1,
	    right_prec, value);
	if (avalue_size < 0)
		return (NULL);

	/* make sure that we've enough space for result string */
	bufsize = avalue_size * (1 + thousands_sep_size) + decimal_point_size +
	    1;
	rslt = FUNC2(1, bufsize);
	if (rslt == NULL) {
		FUNC3(avalue);
		return (NULL);
	}
	bufend = rslt + bufsize - 1;	/* reserve space for trailing '\0' */

	/* skip spaces at beginning */
	padded = 0;
	while (avalue[padded] == ' ') {
		padded++;
		avalue_size--;
	}

	if (right_prec > 0) {
		bufend -= right_prec;
		FUNC6(bufend, avalue + avalue_size+padded-right_prec,
		    right_prec);
		bufend -= decimal_point_size;
		FUNC6(bufend, decimal_point, decimal_point_size);
		avalue_size -= (right_prec + 1);
	}

	if ((*flags & NEED_GROUPING) &&
	    thousands_sep_size > 0 &&	/* XXX: need investigation */
	    *grouping != CHAR_MAX &&
	    *grouping > 0) {
		while (avalue_size > (int)*grouping) {
			FUNC0(*grouping);
			GRPSEP;
			grouping++;

			/* no more grouping ? */
			if (*grouping == CHAR_MAX)
				break;

			/* rest grouping with same value ? */
			if (*grouping == 0) {
				grouping--;
				while (avalue_size > *grouping) {
					FUNC0(*grouping);
					GRPSEP;
				}
			}
		}
		if (avalue_size != 0)
			FUNC0(avalue_size);
		padded -= groups;

	} else {
		bufend -= avalue_size;
		FUNC6(bufend, avalue+padded, avalue_size);
		/* decrease assumed $decimal_point */
		if (right_prec == 0)
			padded -= decimal_point_size;
	}

	/* do padding with pad_char */
	if (padded > 0) {
		bufend -= padded;
		FUNC8(bufend, pad_char, padded);
	}

	bufsize = bufsize - (bufend - rslt) + 1;
	FUNC7(rslt, bufend, bufsize);
	FUNC3(avalue);
	return (rslt);
}