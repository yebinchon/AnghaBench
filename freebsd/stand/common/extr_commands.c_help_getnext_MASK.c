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
 scalar_t__ FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(int fd, char **topic, char **subtopic, char **desc)
{
	char	line[81], *cp, *ep;

	/* Make sure we provide sane values. */
	*topic = *subtopic = *desc = NULL;
	for (;;) {
		if (FUNC0(line, 80, fd) < 0)
			return (0);

		if (FUNC4(line) < 3 || line[0] != '#' || line[1] != ' ')
			continue;

		cp = line + 2;
		while (cp != NULL && *cp != 0) {
			ep = FUNC2(cp, ' ');
			if (*cp == 'T' && *topic == NULL) {
				if (ep != NULL)
					*ep++ = 0;
				*topic = FUNC3(cp + 1);
			} else if (*cp == 'S' && *subtopic == NULL) {
				if (ep != NULL)
					*ep++ = 0;
				*subtopic = FUNC3(cp + 1);
			} else if (*cp == 'D') {
				*desc = FUNC3(cp + 1);
				ep = NULL;
			}
			cp = ep;
		}
		if (*topic == NULL) {
			FUNC1(*subtopic);
			FUNC1(*desc);
			*subtopic = *desc = NULL;
			continue;
		}
		return (1);
	}
}