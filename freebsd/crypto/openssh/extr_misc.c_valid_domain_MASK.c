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
typedef  char u_char ;
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 size_t FUNC5 (char*) ; 
 char FUNC6 (char) ; 

int
FUNC7(char *name, int makelower, const char **errstr)
{
	size_t i, l = FUNC5(name);
	u_char c, last = '\0';
	static char errbuf[256];

	if (l == 0) {
		FUNC4(errbuf, "empty domain name", sizeof(errbuf));
		goto bad;
	}
	if (!FUNC1((u_char)name[0]) && !FUNC2((u_char)name[0])) {
		FUNC3(errbuf, sizeof(errbuf), "domain name \"%.100s\" "
		    "starts with invalid character", name);
		goto bad;
	}
	for (i = 0; i < l; i++) {
		c = FUNC6((u_char)name[i]);
		if (makelower)
			name[i] = (char)c;
		if (last == '.' && c == '.') {
			FUNC3(errbuf, sizeof(errbuf), "domain name "
			    "\"%.100s\" contains consecutive separators", name);
			goto bad;
		}
		if (c != '.' && c != '-' && !FUNC0(c) &&
		    c != '_') /* technically invalid, but common */ {
			FUNC3(errbuf, sizeof(errbuf), "domain name "
			    "\"%.100s\" contains invalid characters", name);
			goto bad;
		}
		last = c;
	}
	if (name[l - 1] == '.')
		name[l - 1] = '\0';
	if (errstr != NULL)
		*errstr = NULL;
	return 1;
bad:
	if (errstr != NULL)
		*errstr = errbuf;
	return 0;
}