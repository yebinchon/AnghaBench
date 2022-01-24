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
struct stat {int dummy; } ;
struct html {char* base_man1; char* base_man2; char* base_includes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct html*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct html*,char const*,char const*,int) ; 
 int FUNC4 (char*,struct stat*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static void
FUNC6(struct html *h, const char *name, const char *sec, int man)
{
	struct stat	 sb;
	const char	*p, *pp;
	char		*filename;

	if (man) {
		pp = h->base_man1;
		if (h->base_man2 != NULL) {
			FUNC1(&filename, "%s.%s", name, sec);
			if (FUNC4(filename, &sb) == -1)
				pp = h->base_man2;
			FUNC0(filename);
		}
	} else
		pp = h->base_includes;

	while ((p = FUNC5(pp, '%')) != NULL) {
		FUNC3(h, pp, p, 1);
		if (man && p[1] == 'S') {
			if (sec == NULL)
				FUNC2(h, '1');
			else
				FUNC3(h, sec, NULL, 1);
		} else if ((man && p[1] == 'N') ||
		    (man == 0 && p[1] == 'I'))
			FUNC3(h, name, NULL, 1);
		else
			FUNC3(h, p, p + 2, 1);
		pp = p + 2;
	}
	if (*pp != '\0')
		FUNC3(h, pp, NULL, 1);
}