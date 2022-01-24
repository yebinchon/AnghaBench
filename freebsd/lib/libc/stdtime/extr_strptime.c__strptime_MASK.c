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
typedef  long time_t ;
struct tm {int tm_yday; int tm_min; int tm_sec; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_isdst; int tm_year; } ;
struct lc_time_T {char* date_fmt; char* c_fmt; char* ampm_fmt; char* X_fmt; char* x_fmt; int /*<<< orphan*/ * month; int /*<<< orphan*/ * mon; int /*<<< orphan*/ * alt_month; int /*<<< orphan*/ * weekday; int /*<<< orphan*/ * wday; int /*<<< orphan*/  pm; int /*<<< orphan*/  am; } ;
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int ERANGE ; 
 int FLAG_MDAY ; 
 int FLAG_MONTH ; 
 int FLAG_NONE ; 
 int FLAG_WDAY ; 
 int FLAG_YDAY ; 
 int FLAG_YEAR ; 
 int TM_MONDAY ; 
 int TM_SUNDAY ; 
 int TM_YEAR_BASE ; 
 struct lc_time_T* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (long*,struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int) ; 
 scalar_t__ FUNC8 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 long FUNC14 (char const*,char**,int,int /*<<< orphan*/ ) ; 
 char** tzname ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static char *
FUNC16(const char *buf, const char *fmt, struct tm *tm, int *GMTp,
		locale_t locale)
{
	char	c;
	const char *ptr;
	int	day_offset = -1, wday_offset;
	int week_offset;
	int	i, len;
	int flags;
	int Ealternative, Oalternative;
	int century, year;
	const struct lc_time_T *tptr = FUNC0(locale);
	static int start_of_month[2][13] = {
		{0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365},
		{0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366}
	};

	flags = FLAG_NONE;
	century = -1;
	year = -1;

	ptr = fmt;
	while (*ptr != 0) {
		c = *ptr++;

		if (c != '%') {
			if (FUNC8((unsigned char)c, locale))
				while (*buf != 0 && 
				       FUNC8((unsigned char)*buf, locale))
					buf++;
			else if (c != *buf++)
				return (NULL);
			continue;
		}

		Ealternative = 0;
		Oalternative = 0;
label:
		c = *ptr++;
		switch (c) {
		case '%':
			if (*buf++ != '%')
				return (NULL);
			break;

		case '+':
			buf = FUNC16(buf, tptr->date_fmt, tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			flags |= FLAG_WDAY | FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
			break;

		case 'C':
			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			/* XXX This will break for 3-digit centuries. */
			len = 2;
			for (i = 0; len && *buf != 0 &&
			     FUNC6((unsigned char)*buf, locale); buf++) {
				i *= 10;
				i += *buf - '0';
				len--;
			}

			century = i;
			flags |= FLAG_YEAR;

			break;

		case 'c':
			buf = FUNC16(buf, tptr->c_fmt, tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			flags |= FLAG_WDAY | FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
			break;

		case 'D':
			buf = FUNC16(buf, "%m/%d/%y", tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			flags |= FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
			break;

		case 'E':
			if (Ealternative || Oalternative)
				break;
			Ealternative++;
			goto label;

		case 'O':
			if (Ealternative || Oalternative)
				break;
			Oalternative++;
			goto label;

		case 'F':
			buf = FUNC16(buf, "%Y-%m-%d", tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			flags |= FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
			break;

		case 'R':
			buf = FUNC16(buf, "%H:%M", tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			break;

		case 'r':
			buf = FUNC16(buf, tptr->ampm_fmt, tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			break;

		case 'T':
			buf = FUNC16(buf, "%H:%M:%S", tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			break;

		case 'X':
			buf = FUNC16(buf, tptr->X_fmt, tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			break;

		case 'x':
			buf = FUNC16(buf, tptr->x_fmt, tm, GMTp, locale);
			if (buf == NULL)
				return (NULL);
			flags |= FLAG_MONTH | FLAG_MDAY | FLAG_YEAR;
			break;

		case 'j':
			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			len = 3;
			for (i = 0; len && *buf != 0 &&
			     FUNC6((unsigned char)*buf, locale); buf++){
				i *= 10;
				i += *buf - '0';
				len--;
			}
			if (i < 1 || i > 366)
				return (NULL);

			tm->tm_yday = i - 1;
			flags |= FLAG_YDAY;

			break;

		case 'M':
		case 'S':
			if (*buf == 0 ||
				FUNC8((unsigned char)*buf, locale))
				break;

			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			len = 2;
			for (i = 0; len && *buf != 0 &&
				FUNC6((unsigned char)*buf, locale); buf++){
				i *= 10;
				i += *buf - '0';
				len--;
			}

			if (c == 'M') {
				if (i > 59)
					return (NULL);
				tm->tm_min = i;
			} else {
				if (i > 60)
					return (NULL);
				tm->tm_sec = i;
			}

			break;

		case 'H':
		case 'I':
		case 'k':
		case 'l':
			/*
			 * %k and %l specifiers are documented as being
			 * blank-padded.  However, there is no harm in
			 * allowing zero-padding.
			 *
			 * XXX %k and %l specifiers may gobble one too many
			 * digits if used incorrectly.
			 */

			len = 2;
			if ((c == 'k' || c == 'l') &&
			    FUNC5((unsigned char)*buf, locale)) {
				buf++;
				len = 1;
			}

			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			for (i = 0; len && *buf != 0 &&
			     FUNC6((unsigned char)*buf, locale); buf++) {
				i *= 10;
				i += *buf - '0';
				len--;
			}
			if (c == 'H' || c == 'k') {
				if (i > 23)
					return (NULL);
			} else if (i == 0 || i > 12)
				return (NULL);

			tm->tm_hour = i;

			break;

		case 'p':
			/*
			 * XXX This is bogus if parsed before hour-related
			 * specifiers.
			 */
			if (tm->tm_hour > 12)
				return (NULL);

			len = FUNC11(tptr->am);
			if (FUNC12(buf, tptr->am, len, locale) == 0) {
				if (tm->tm_hour == 12)
					tm->tm_hour = 0;
				buf += len;
				break;
			}

			len = FUNC11(tptr->pm);
			if (FUNC12(buf, tptr->pm, len, locale) == 0) {
				if (tm->tm_hour != 12)
					tm->tm_hour += 12;
				buf += len;
				break;
			}

			return (NULL);

		case 'A':
		case 'a':
			for (i = 0; i < FUNC2(tptr->weekday); i++) {
				len = FUNC11(tptr->weekday[i]);
				if (FUNC12(buf, tptr->weekday[i],
						len, locale) == 0)
					break;
				len = FUNC11(tptr->wday[i]);
				if (FUNC12(buf, tptr->wday[i],
						len, locale) == 0)
					break;
			}
			if (i == FUNC2(tptr->weekday))
				return (NULL);

			buf += len;
			tm->tm_wday = i;
			flags |= FLAG_WDAY;
			break;

		case 'U':
		case 'W':
			/*
			 * XXX This is bogus, as we can not assume any valid
			 * information present in the tm structure at this
			 * point to calculate a real value, so just check the
			 * range for now.
			 */
			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			len = 2;
			for (i = 0; len && *buf != 0 &&
			     FUNC6((unsigned char)*buf, locale); buf++) {
				i *= 10;
				i += *buf - '0';
				len--;
			}
			if (i > 53)
				return (NULL);

			if (c == 'U')
				day_offset = TM_SUNDAY;
			else
				day_offset = TM_MONDAY;


			week_offset = i;

			break;

		case 'u':
		case 'w':
			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			i = *buf++ - '0';
			if (i < 0 || i > 7 || (c == 'u' && i < 1) ||
			    (c == 'w' && i > 6))
				return (NULL);

			tm->tm_wday = i % 7;
			flags |= FLAG_WDAY;

			break;

		case 'e':
			/*
			 * With %e format, our strftime(3) adds a blank space
			 * before single digits.
			 */
			if (*buf != 0 &&
			    FUNC8((unsigned char)*buf, locale))
			       buf++;
			/* FALLTHROUGH */
		case 'd':
			/*
			 * The %e specifier was once explicitly documented as
			 * not being zero-padded but was later changed to
			 * equivalent to %d.  There is no harm in allowing
			 * such padding.
			 *
			 * XXX The %e specifier may gobble one too many
			 * digits if used incorrectly.
			 */
			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			len = 2;
			for (i = 0; len && *buf != 0 &&
			     FUNC6((unsigned char)*buf, locale); buf++) {
				i *= 10;
				i += *buf - '0';
				len--;
			}
			if (i == 0 || i > 31)
				return (NULL);

			tm->tm_mday = i;
			flags |= FLAG_MDAY;

			break;

		case 'B':
		case 'b':
		case 'h':
			for (i = 0; i < FUNC2(tptr->month); i++) {
				if (Oalternative) {
					if (c == 'B') {
						len = FUNC11(tptr->alt_month[i]);
						if (FUNC12(buf,
								tptr->alt_month[i],
								len, locale) == 0)
							break;
					}
				} else {
					len = FUNC11(tptr->month[i]);
					if (FUNC12(buf, tptr->month[i],
							len, locale) == 0)
						break;
				}
			}
			/*
			 * Try the abbreviated month name if the full name
			 * wasn't found and Oalternative was not requested.
			 */
			if (i == FUNC2(tptr->month) && !Oalternative) {
				for (i = 0; i < FUNC2(tptr->month); i++) {
					len = FUNC11(tptr->mon[i]);
					if (FUNC12(buf, tptr->mon[i],
							len, locale) == 0)
						break;
				}
			}
			if (i == FUNC2(tptr->month))
				return (NULL);

			tm->tm_mon = i;
			buf += len;
			flags |= FLAG_MONTH;

			break;

		case 'm':
			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			len = 2;
			for (i = 0; len && *buf != 0 &&
			     FUNC6((unsigned char)*buf, locale); buf++) {
				i *= 10;
				i += *buf - '0';
				len--;
			}
			if (i < 1 || i > 12)
				return (NULL);

			tm->tm_mon = i - 1;
			flags |= FLAG_MONTH;

			break;

		case 's':
			{
			char *cp;
			int sverrno;
			long n;
			time_t t;

			sverrno = errno;
			errno = 0;
			n = FUNC14(buf, &cp, 10, locale);
			if (errno == ERANGE || (long)(t = n) != n) {
				errno = sverrno;
				return (NULL);
			}
			errno = sverrno;
			buf = cp;
			if (FUNC4(&t, tm) == NULL)
				return (NULL);
			*GMTp = 1;
			flags |= FLAG_YDAY | FLAG_WDAY | FLAG_MONTH |
			    FLAG_MDAY | FLAG_YEAR;
			}
			break;

		case 'Y':
		case 'y':
			if (*buf == 0 ||
			    FUNC8((unsigned char)*buf, locale))
				break;

			if (!FUNC6((unsigned char)*buf, locale))
				return (NULL);

			len = (c == 'Y') ? 4 : 2;
			for (i = 0; len && *buf != 0 &&
			     FUNC6((unsigned char)*buf, locale); buf++) {
				i *= 10;
				i += *buf - '0';
				len--;
			}
			if (c == 'Y')
				century = i / 100;
			year = i % 100;

			flags |= FLAG_YEAR;

			break;

		case 'Z':
			{
			const char *cp;
			char *zonestr;

			for (cp = buf; *cp &&
			     FUNC9((unsigned char)*cp, locale); ++cp) {
				/*empty*/}
			if (cp - buf) {
				zonestr = FUNC1(cp - buf + 1);
				FUNC13(zonestr, buf, cp - buf);
				zonestr[cp - buf] = '\0';
				FUNC15();
				if (0 == FUNC10(zonestr, "GMT") ||
				    0 == FUNC10(zonestr, "UTC")) {
				    *GMTp = 1;
				} else if (0 == FUNC10(zonestr, tzname[0])) {
				    tm->tm_isdst = 0;
				} else if (0 == FUNC10(zonestr, tzname[1])) {
				    tm->tm_isdst = 1;
				} else {
				    return (NULL);
				}
				buf += cp - buf;
			}
			}
			break;

		case 'z':
			{
			int sign = 1;

			if (*buf != '+') {
				if (*buf == '-')
					sign = -1;
				else
					return (NULL);
			}

			buf++;
			i = 0;
			for (len = 4; len > 0; len--) {
				if (FUNC6((unsigned char)*buf, locale)) {
					i *= 10;
					i += *buf - '0';
					buf++;
				} else if (len == 2) {
					i *= 100;
					break;
				} else
					return (NULL);
			}

			if (i > 1400 || (sign == -1 && i > 1200) ||
			    (i % 100) >= 60)
				return (NULL);
			tm->tm_hour -= sign * (i / 100);
			tm->tm_min  -= sign * (i % 100);
			*GMTp = 1;
			}
			break;

		case 'n':
		case 't':
			while (FUNC8((unsigned char)*buf, locale))
				buf++;
			break;

		default:
			return (NULL);
		}
	}

	if (century != -1 || year != -1) {
		if (year == -1)
			year = 0;
		if (century == -1) {
			if (year < 69)
				year += 100;
		} else
			year += century * 100 - TM_YEAR_BASE;
		tm->tm_year = year;
	}

	if (!(flags & FLAG_YDAY) && (flags & FLAG_YEAR)) {
		if ((flags & (FLAG_MONTH | FLAG_MDAY)) ==
		    (FLAG_MONTH | FLAG_MDAY)) {
			tm->tm_yday = start_of_month[FUNC7(tm->tm_year +
			    TM_YEAR_BASE)][tm->tm_mon] + (tm->tm_mday - 1);
			flags |= FLAG_YDAY;
		} else if (day_offset != -1) {
			int tmpwday, tmpyday, fwo;

			fwo = FUNC3(tm->tm_year + TM_YEAR_BASE);
			/* No incomplete week (week 0). */
			if (week_offset == 0 && fwo == day_offset)
				return (NULL);

			/* Set the date to the first Sunday (or Monday)
			 * of the specified week of the year.
			 */
			tmpwday = (flags & FLAG_WDAY) ? tm->tm_wday :
			    day_offset;
			tmpyday = (7 - fwo + day_offset) % 7 +
			    (week_offset - 1) * 7 +
			    (tmpwday - day_offset + 7) % 7;
			/* Impossible yday for incomplete week (week 0). */
			if (tmpyday < 0) {
				if (flags & FLAG_WDAY)
					return (NULL);
				tmpyday = 0;
			}
			tm->tm_yday = tmpyday;
			flags |= FLAG_YDAY;
		}
	}

	if ((flags & (FLAG_YEAR | FLAG_YDAY)) == (FLAG_YEAR | FLAG_YDAY)) {
		if (!(flags & FLAG_MONTH)) {
			i = 0;
			while (tm->tm_yday >=
			    start_of_month[FUNC7(tm->tm_year +
			    TM_YEAR_BASE)][i])
				i++;
			if (i > 12) {
				i = 1;
				tm->tm_yday -=
				    start_of_month[FUNC7(tm->tm_year +
				    TM_YEAR_BASE)][12];
				tm->tm_year++;
			}
			tm->tm_mon = i - 1;
			flags |= FLAG_MONTH;
		}
		if (!(flags & FLAG_MDAY)) {
			tm->tm_mday = tm->tm_yday -
			    start_of_month[FUNC7(tm->tm_year + TM_YEAR_BASE)]
			    [tm->tm_mon] + 1;
			flags |= FLAG_MDAY;
		}
		if (!(flags & FLAG_WDAY)) {
			i = 0;
			wday_offset = FUNC3(tm->tm_year);
			while (i++ <= tm->tm_yday) {
				if (wday_offset++ >= 6)
					wday_offset = 0;
			}
			tm->tm_wday = wday_offset;
			flags |= FLAG_WDAY;
		}
	}

	return ((char *)buf);
}