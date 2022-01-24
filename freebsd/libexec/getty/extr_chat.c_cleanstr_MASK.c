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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,unsigned char const) ; 
 unsigned char* FUNC1 (unsigned char*,int) ; 

__attribute__((used)) static const char *
FUNC2(const unsigned char *s, int l)
{
	static unsigned char * tmp = NULL;
	static int tmplen = 0;

	if (tmplen < l * 4 + 1)
		tmp = FUNC1(tmp, tmplen = l * 4 + 1);

	if (tmp == NULL) {
		tmplen = 0;
		return "(mem alloc error)";
	} else {
		int i = 0;
		char * p = tmp;

		while (i < l)
			FUNC0(&p, s[i++]);
		*p = '\0';
	}

	return tmp;
}