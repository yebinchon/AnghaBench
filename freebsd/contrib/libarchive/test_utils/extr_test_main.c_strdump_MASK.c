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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *e, const char *p, int ewidth, int utf8)
{
	const char *q = p;

	FUNC1("      %*s = ", ewidth, e);
	if (p == NULL) {
		FUNC1("NULL\n");
		return;
	}
	FUNC1("\"");
	while (*p != '\0') {
		unsigned int c = 0xff & *p++;
		switch (c) {
		case '\a': FUNC1("\\a"); break;
		case '\b': FUNC1("\\b"); break;
		case '\n': FUNC1("\\n"); break;
		case '\r': FUNC1("\\r"); break;
		default:
			if (c >= 32 && c < 127)
				FUNC1("%c", c);
			else
				FUNC1("\\x%02X", c);
		}
	}
	FUNC1("\"");
	FUNC1(" (length %d)", q == NULL ? -1 : (int)FUNC2(q));

	/*
	 * If the current string is UTF-8, dump its code points.
	 */
	if (utf8) {
		size_t len;
		uint32_t uc;
		int n;
		int cnt = 0;

		p = q;
		len = FUNC2(p);
		FUNC1(" [");
		while ((n = FUNC0(&uc, p, len)) > 0) {
			if (p != q)
				FUNC1(" ");
			FUNC1("%04X", uc);
			p += n;
			len -= n;
			cnt++;
		}
		FUNC1("]");
		FUNC1(" (count %d", cnt);
		if (n < 0) {
			FUNC1(",unknown %d bytes", len);
		}
		FUNC1(")");

	}
	FUNC1("\n");
}