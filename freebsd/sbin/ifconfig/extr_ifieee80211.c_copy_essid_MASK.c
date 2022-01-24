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
typedef  size_t u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC3(char buf[], size_t bufsize, const u_int8_t *essid, size_t essid_len)
{
	const u_int8_t *p; 
	size_t maxlen;
	u_int i;

	if (essid_len > bufsize)
		maxlen = bufsize;
	else
		maxlen = essid_len;
	/* determine printable or not */
	for (i = 0, p = essid; i < maxlen; i++, p++) {
		if (*p < ' ' || *p > 0x7e)
			break;
	}
	if (i != maxlen) {		/* not printable, print as hex */
		if (bufsize < 3)
			return 0;
		FUNC2(buf, "0x", bufsize);
		bufsize -= 2;
		p = essid;
		for (i = 0; i < maxlen && bufsize >= 2; i++) {
			FUNC1(&buf[2+2*i], "%02x", p[i]);
			bufsize -= 2;
		}
		if (i != essid_len)
			FUNC0(&buf[2+2*i-3], "...", 3);
	} else {			/* printable, truncate as needed */
		FUNC0(buf, essid, maxlen);
		if (maxlen != essid_len)
			FUNC0(&buf[maxlen-3], "...", 3);
	}
	return maxlen;
}