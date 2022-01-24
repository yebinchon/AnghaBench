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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 char* FUNC5 (char const*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

const u_char *
FUNC7(netdissect_options *ndo,
          const u_char *buf, const char *fmt, const u_char *maxbuf,
          int unicodestr)
{
    static int depth = 0;
    char s[128];
    char *p;

    while (*fmt) {
	switch (*fmt) {
	case '*':
	    fmt++;
	    while (buf < maxbuf) {
		const u_char *buf2;
		depth++;
		buf2 = FUNC7(ndo, buf, fmt, maxbuf, unicodestr);
		depth--;
		if (buf2 == NULL)
		    return(NULL);
		if (buf2 == buf)
		    return(buf);
		buf = buf2;
	    }
	    return(buf);

	case '|':
	    fmt++;
	    if (buf >= maxbuf)
		return(buf);
	    break;

	case '%':
	    fmt++;
	    buf = maxbuf;
	    break;

	case '#':
	    fmt++;
	    return(buf);
	    break;

	case '[':
	    fmt++;
	    if (buf >= maxbuf)
		return(buf);
	    FUNC2(s, 0, sizeof(s));
	    p = FUNC5(fmt, ']');
	    if ((size_t)(p - fmt + 1) > sizeof(s)) {
		/* overrun */
		return(buf);
	    }
	    FUNC6(s, fmt, p - fmt);
	    s[p - fmt] = '\0';
	    fmt = p + 1;
	    buf = FUNC3(ndo, buf, s, maxbuf, unicodestr);
	    if (buf == NULL)
		return(NULL);
	    break;

	default:
	    FUNC0((ndo, "%c", *fmt));
	    fmt++;
	    break;
	}
    }
    if (!depth && buf < maxbuf) {
	size_t len = FUNC1(maxbuf, buf);
	FUNC0((ndo, "Data: (%lu bytes)\n", (unsigned long)len));
	FUNC4(ndo, buf, len);
	return(buf + len);
    }
    return(buf);
}