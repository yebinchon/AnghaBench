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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  _key ;

/* Variables and functions */
 char* FUNC0 (char const*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 long FUNC2 (char const*,char**,int) ; 
 char* FUNC3 (char const*,size_t,char const*,int) ; 

__attribute__((used)) static ssize_t
FUNC4(const char *buf, size_t bsz)
{
	static const char _key[] = "\r\nContent-Length:";
	const char *val, *eol;
	char *on = NULL;
	long int len;

	if ((val = FUNC3(buf, bsz, _key, sizeof(_key) - 1U)) == NULL) {
		/* no bother */
		return -1;
	}
	val += sizeof(_key) - 1U;
	if ((eol = FUNC0(val, buf + bsz - val)) == NULL) {
		/* no end of line */
		return -1;
	}

	/* skip leading whitespace */
	while (val < eol && (*val == ' ' || *val == '\t'))
		val++;
	/* there must be at least one digit */
	if (!FUNC1((unsigned char)*val))
		return -1;
	errno = 0;
	len = FUNC2(val, &on, 10);
	if (errno != 0 || on != eol) {
		/* line must end here */
		return -1;
	}

	return (size_t)len;
}