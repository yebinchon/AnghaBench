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
typedef  char u_int8_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static const char *
FUNC6(const char *val, const char *sep, u_int8_t *buf, int *lenp)
{
	int len;
	int hexstr;
	u_int8_t *p;

	len = *lenp;
	p = buf;
	hexstr = (val[0] == '0' && FUNC4((u_char)val[1]) == 'x');
	if (hexstr)
		val += 2;
	for (;;) {
		if (*val == '\0')
			break;
		if (sep != NULL && FUNC2(sep, *val) != NULL) {
			val++;
			break;
		}
		if (hexstr) {
			if (!FUNC0((u_char)val[0])) {
				FUNC5("bad hexadecimal digits");
				return NULL;
			}
			if (!FUNC0((u_char)val[1])) {
				FUNC5("odd count hexadecimal digits");
				return NULL;
			}
		}
		if (p >= buf + len) {
			if (hexstr)
				FUNC5("hexadecimal digits too long");
			else
				FUNC5("string too long");
			return NULL;
		}
		if (hexstr) {
#define	tohex(x)	(isdigit(x) ? (x) - '0' : tolower(x) - 'a' + 10)
			*p++ = (tohex((u_char)val[0]) << 4) |
			    tohex((u_char)val[1]);
#undef tohex
			val += 2;
		} else
			*p++ = *val++;
	}
	len = p - buf;
	/* The string "-" is treated as the empty string. */
	if (!hexstr && len == 1 && buf[0] == '-') {
		len = 0;
		FUNC1(buf, 0, *lenp);
	} else if (len < *lenp)
		FUNC1(p, 0, *lenp - len);
	*lenp = len;
	return val;
}