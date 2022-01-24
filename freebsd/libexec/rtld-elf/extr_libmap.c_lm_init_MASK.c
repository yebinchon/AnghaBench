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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ld_path_libmap_conf ; 
 scalar_t__ lm_count ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lmp_head ; 
 char* FUNC5 (char*) ; 

int
FUNC6(char *libmap_override)
{
	char *p;

	FUNC1("lm_init(\"%s\")", libmap_override);
	FUNC0(&lmp_head);

	FUNC4(ld_path_libmap_conf);

	if (libmap_override) {
		/*
		 * Do some character replacement to make $LDLIBMAP look
		 * like a text file, then parse it.
		 */
		libmap_override = FUNC5(libmap_override);
		for (p = libmap_override; *p; p++) {
			switch (*p) {
			case '=':
				*p = ' ';
				break;
			case ',':
				*p = '\n';
				break;
			}
		}
		FUNC3(libmap_override, p - libmap_override);
		FUNC2(libmap_override);
	}

	return (lm_count == 0);
}