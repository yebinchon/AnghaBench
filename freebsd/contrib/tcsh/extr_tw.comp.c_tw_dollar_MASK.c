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
struct Strbuf {int dummy; } ;
typedef  char const Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_COMPMIS ; 
 scalar_t__ FUNC0 (char const) ; 
 struct Strbuf Strbuf_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct Strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct Strbuf*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct Strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static const Char *
FUNC7(const Char *str, Char **wl, size_t nwl, Char **result, Char sep,
	  const char *msg)
{
    struct Strbuf buf = Strbuf_INIT;
    Char *res;
    const Char *sp;

    for (sp = str; *sp && *sp != sep;)
	if (sp[0] == '$' && sp[1] == ':' && FUNC0(sp[sp[2] == '-' ? 3 : 2])) {
	    int num, neg = 0;
	    sp += 2;
	    if (*sp == '-') {
		neg = 1;
		sp++;
	    }
	    for (num = *sp++ - '0'; FUNC0(*sp); num += 10 * num + *sp++ - '0')
		continue;
	    if (neg)
		num = nwl - num - 1;
	    if (num >= 0 && (size_t)num < nwl)
		FUNC1(&buf, wl[num]);
	}
	else
	    FUNC2(&buf, *sp++);

    res = FUNC3(&buf);

    if (*sp++ == sep) {
	*result = res;
	return sp;
    }

    FUNC6(res);
    /* Truncates data if WIDE_STRINGS */
    FUNC5(ERR_COMPMIS, (int)sep, msg, FUNC4(str));
    return --sp;
}