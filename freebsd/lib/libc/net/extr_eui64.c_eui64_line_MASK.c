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
struct eui64 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,struct eui64*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 size_t FUNC3 (char*,char*,size_t) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int
FUNC5(const char *l, struct eui64 *e, char *hostname, size_t len)
{
	char *line, *linehead, *cur;

	linehead = FUNC2(l);
	if (linehead == NULL)
		return (-1);
	line = linehead;

	/* Find and parse the EUI64 */
	while ((cur = FUNC4(&line, " \t\r\n")) != NULL) {
		if (*cur != '\0') {
			if (FUNC0(cur, e) == 0)
				break;
			else
				goto bad;
		}
	}

	/* Find the hostname */
	while ((cur = FUNC4(&line, " \t\r\n")) != NULL) {
		if (*cur != '\0') {
			if (FUNC3(hostname, cur, len) <= len)
				break;
			else
				goto bad;
		}
	}

	/* Make sure what remains is either whitespace or a comment */
	while ((cur = FUNC4(&line, " \t\r\n")) != NULL) {
		if (*cur == '#')
			break;
		if (*cur != '\0')
			goto bad;
	}

	FUNC1(linehead);
	return (0);

bad:
	FUNC1(linehead);
	return (-1);
}