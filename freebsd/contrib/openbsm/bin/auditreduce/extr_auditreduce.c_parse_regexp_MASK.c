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
struct re_entry {int re_negate; int /*<<< orphan*/  re_regexp; void* re_pattern; } ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_NOSUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct re_entry*,int /*<<< orphan*/ ) ; 
 struct re_entry* FUNC2 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  re_glue ; 
 int /*<<< orphan*/  re_head ; 
 int FUNC6 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(char *re_string)
{
	char *orig, *copy, re_error[64];
	struct re_entry *rep;
	int error, nstrs, i, len;

	copy = FUNC8(re_string);
	orig = copy;
	len = FUNC11(copy);
	for (nstrs = 0, i = 0; i < len; i++) {
		if (copy[i] == ',' && i > 0) {
			if (copy[i - 1] == '\\')
				FUNC10(&copy[i - 1], &copy[i], len);
			else {
				nstrs++;
				copy[i] = '\0';
			}
		}
	}
	FUNC0(&re_head);
	for (i = 0; i < nstrs + 1; i++) {
		rep = FUNC2(1, sizeof(*rep));
		if (rep == NULL) {
			(void) FUNC4(stderr, "calloc: %s\n",
			    FUNC9(errno));
			FUNC3(1);
		}
		if (*copy == '~') {
			copy++;
			rep->re_negate = 1;
		}
		rep->re_pattern = FUNC8(copy);
		error = FUNC6(&rep->re_regexp, rep->re_pattern,
		    REG_EXTENDED | REG_NOSUB);
		if (error != 0) {
			FUNC7(error, &rep->re_regexp, re_error, 64);
			(void) FUNC4(stderr, "regcomp: %s\n", re_error);
			FUNC3(1);
		}
		FUNC1(&re_head, rep, re_glue);
		len = FUNC11(copy);
		copy += len + 1;
	}
	FUNC5(orig);
}