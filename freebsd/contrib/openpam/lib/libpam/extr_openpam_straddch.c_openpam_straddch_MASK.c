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
 int /*<<< orphan*/  ENOMEM ; 
 size_t MIN_STR_SIZE ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*,size_t) ; 

int
FUNC3(char **str, size_t *size, size_t *len, int ch)
{
	size_t tmpsize;
	char *tmpstr;

	if (*str == NULL) {
		/* initial allocation */
		tmpsize = MIN_STR_SIZE;
		if ((tmpstr = FUNC0(tmpsize)) == NULL) {
			FUNC1(PAM_LOG_ERROR, "malloc(): %m");
			errno = ENOMEM;
			return (-1);
		}
		*str = tmpstr;
		*size = tmpsize;
		*len = 0;
	} else if (ch != 0 && *len + 1 >= *size) {
		/* additional space required */
		tmpsize = *size * 2;
		if ((tmpstr = FUNC2(*str, tmpsize)) == NULL) {
			FUNC1(PAM_LOG_ERROR, "realloc(): %m");
			errno = ENOMEM;
			return (-1);
		}
		*size = tmpsize;
		*str = tmpstr;
	}
	if (ch != 0) {
		(*str)[*len] = ch;
		++*len;
	}
	(*str)[*len] = '\0';
	return (0);
}