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
typedef  scalar_t__ u_int ;
typedef  char u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 

__attribute__((used)) static u_int
FUNC4(netdissect_options *ndo, const char *protoname,
    const char *prefix, const u_char *pptr, u_int idx, u_int len)
{
	u_int startidx;
	u_int linelen;

	startidx = idx;
	while (idx < len) {
		FUNC1(*(pptr+idx));
		if (*(pptr+idx) == '\n') {
			/*
			 * LF without CR; end of line.
			 * Skip the LF and print the line, with the
			 * exception of the LF.
			 */
			linelen = idx - startidx;
			idx++;
			goto print;
		} else if (*(pptr+idx) == '\r') {
			/* CR - any LF? */
			if ((idx+1) >= len) {
				/* not in this packet */
				return (0);
			}
			FUNC1(*(pptr+idx+1));
			if (*(pptr+idx+1) == '\n') {
				/*
				 * CR-LF; end of line.
				 * Skip the CR-LF and print the line, with
				 * the exception of the CR-LF.
				 */
				linelen = idx - startidx;
				idx += 2;
				goto print;
			}

			/*
			 * CR followed by something else; treat this
			 * as if it were binary data, and don't print
			 * it.
			 */
			return (0);
		} else if (!FUNC2(*(pptr+idx)) ||
		    (!FUNC3(*(pptr+idx)) && *(pptr+idx) != '\t')) {
			/*
			 * Not a printable ASCII character and not a tab;
			 * treat this as if it were binary data, and
			 * don't print it.
			 */
			return (0);
		}
		idx++;
	}

	/*
	 * All printable ASCII, but no line ending after that point
	 * in the buffer; treat this as if it were truncated.
	 */
trunc:
	linelen = idx - startidx;
	FUNC0((ndo, "%s%.*s[!%s]", prefix, (int)linelen, pptr + startidx,
	    protoname));
	return (0);

print:
	FUNC0((ndo, "%s%.*s", prefix, (int)linelen, pptr + startidx));
	return (idx);
}