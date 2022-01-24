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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 size_t FUNC4 (char*) ; 

int
FUNC5(FILE *stream, char *buf, size_t buflen, const char **errormsg)
{
	int	rv, ch;
	size_t	len;

	if (FUNC2(buf, buflen, stream) == NULL) {
		if (FUNC1(stream)) {	/* EOF */
			rv = -2;
			if (errormsg)
				*errormsg = "\nEOF received";
		} else  {		/* error */
			rv = -1;
			if (errormsg)
				*errormsg = "Error encountered";
		}
		FUNC0(stream);
		return rv;
	}
	len = FUNC4(buf);
	if (buf[len-1] == '\n') {	/* clear any trailing newline */
		buf[--len] = '\0';
	} else if (len == buflen-1) {	/* line too long */
		while ((ch = FUNC3()) != '\n' && ch != EOF)
			continue;
		if (errormsg)
			*errormsg = "Input line is too long";
		FUNC0(stream);
		return -3;
	}
	if (errormsg)
		*errormsg = NULL;
	return len;
}