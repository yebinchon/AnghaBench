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
struct roff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_NAMESC ; 
 int /*<<< orphan*/  FUNC0 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*,int,char*) ; 

__attribute__((used)) static size_t
FUNC2(struct roff *r, char **cpp, int ln, int pos)
{
	char	 *name, *cp;
	size_t	  namesz;

	name = *cpp;
	if (*name == '\0')
		return 0;

	/* Advance cp to the byte after the end of the name. */

	for (cp = name; 1; cp++) {
		namesz = cp - name;
		if (*cp == '\0')
			break;
		if (*cp == ' ' || *cp == '\t') {
			cp++;
			break;
		}
		if (*cp != '\\')
			continue;
		if (cp[1] == '{' || cp[1] == '}')
			break;
		if (*++cp == '\\')
			continue;
		FUNC1(MANDOCERR_NAMESC, ln, pos,
		    "%.*s", (int)(cp - name + 1), name);
		FUNC0((const char **)&cp, NULL, NULL);
		break;
	}

	/* Read past spaces. */

	while (*cp == ' ')
		cp++;

	*cpp = cp;
	return namesz;
}