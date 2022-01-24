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
typedef  int time_t ;
typedef  int /*<<< orphan*/  _key ;

/* Variables and functions */
 char* FUNC0 (char const*,int) ; 
 char* FUNC1 (char const*,size_t,char const*,int) ; 
 int FUNC2 (char const*,char**) ; 

__attribute__((used)) static time_t
FUNC3(const char *buf, size_t bsz)
{
	static const char _key[] = "\r\nWARC-Date:";
	const char *val, *eol;
	char *on = NULL;
	time_t res;

	if ((val = FUNC1(buf, bsz, _key, sizeof(_key) - 1U)) == NULL) {
		/* no bother */
		return (time_t)-1;
	}
	val += sizeof(_key) - 1U;
	if ((eol = FUNC0(val, buf + bsz - val)) == NULL ) {
		/* no end of line */
		return -1;
	}

	/* xstrpisotime() kindly overreads whitespace for us, so use that */
	res = FUNC2(val, &on);
	if (on != eol) {
		/* line must end here */
		return -1;
	}
	return res;
}