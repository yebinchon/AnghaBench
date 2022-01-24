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
struct mansearch {scalar_t__ argmode; char const* sec; int /*<<< orphan*/ * arch; scalar_t__ firstmatch; } ;
struct manpaths {size_t sz; } ;
struct manpage {int dummy; } ;
typedef  int /*<<< orphan*/  sections ;

/* Variables and functions */
 scalar_t__ ARG_NAME ; 
 int /*<<< orphan*/  OSENUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct manpaths const*,size_t,char const* const,int /*<<< orphan*/ *,char*,struct manpage**,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC5(const struct mansearch *cfg, const struct manpaths *paths,
	int argc, char **argv, struct manpage **res, size_t *ressz)
{
	const char *const sections[] =
	    {"1", "8", "6", "2", "3", "5", "7", "4", "9", "3p"};
	const size_t nsec = sizeof(sections)/sizeof(sections[0]);

	size_t		 ipath, isec, lastsz;

	FUNC1(cfg->argmode == ARG_NAME);

	if (res != NULL)
		*res = NULL;
	*ressz = lastsz = 0;
	while (argc) {
		for (ipath = 0; ipath < paths->sz; ipath++) {
			if (cfg->sec != NULL) {
				if (FUNC2(paths, ipath, cfg->sec,
				    cfg->arch, *argv, res, ressz) != -1 &&
				    cfg->firstmatch)
					return 0;
			} else for (isec = 0; isec < nsec; isec++)
				if (FUNC2(paths, ipath, sections[isec],
				    cfg->arch, *argv, res, ressz) != -1 &&
				    cfg->firstmatch)
					return 0;
		}
		if (res != NULL && *ressz == lastsz &&
		    FUNC3(*argv, '/') == NULL) {
			if (cfg->arch != NULL &&
			    FUNC0(cfg->arch, OSENUM) == 0)
				FUNC4("Unknown architecture \"%s\".",
				    cfg->arch);
			else if (cfg->sec == NULL)
				FUNC4("No entry for %s in the manual.",
				    *argv);
			else
				FUNC4("No entry for %s in section %s "
				    "of the manual.", *argv, cfg->sec);
		}
		lastsz = *ressz;
		argv++;
		argc--;
	}
	return -1;
}