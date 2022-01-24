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
struct zone {int z_nrules; int /*<<< orphan*/  z_format; int /*<<< orphan*/  z_rule; int /*<<< orphan*/  z_stdoff; int /*<<< orphan*/  z_linenum; int /*<<< orphan*/  z_filename; struct rule* z_rules; } ;
struct rule {int /*<<< orphan*/  r_name; int /*<<< orphan*/  r_filename; int /*<<< orphan*/  r_linenum; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errors ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nrules ; 
 int nzones ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcomp ; 
 struct rule* rules ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct zone* zones ; 

__attribute__((used)) static void
FUNC9(void)
{
	register struct zone *	zp;
	register struct rule *	rp;
	register int		base, out;
	register int		i, j;

	if (nrules != 0) {
		(void) FUNC5((void *) rules, (size_t) nrules,
			(size_t) sizeof *rules, rcomp);
		for (i = 0; i < nrules - 1; ++i) {
			if (FUNC7(rules[i].r_name,
				rules[i + 1].r_name) != 0)
					continue;
			if (FUNC7(rules[i].r_filename,
				rules[i + 1].r_filename) == 0)
					continue;
			FUNC1(rules[i].r_filename, rules[i].r_linenum);
			FUNC8(FUNC0("same rule name in multiple files"));
			FUNC1(rules[i + 1].r_filename, rules[i + 1].r_linenum);
			FUNC8(FUNC0("same rule name in multiple files"));
			for (j = i + 2; j < nrules; ++j) {
				if (FUNC7(rules[i].r_name,
					rules[j].r_name) != 0)
						break;
				if (FUNC7(rules[i].r_filename,
					rules[j].r_filename) == 0)
						continue;
				if (FUNC7(rules[i + 1].r_filename,
					rules[j].r_filename) == 0)
						continue;
				break;
			}
			i = j - 1;
		}
	}
	for (i = 0; i < nzones; ++i) {
		zp = &zones[i];
		zp->z_rules = NULL;
		zp->z_nrules = 0;
	}
	for (base = 0; base < nrules; base = out) {
		rp = &rules[base];
		for (out = base + 1; out < nrules; ++out)
			if (FUNC7(rp->r_name, rules[out].r_name) != 0)
				break;
		for (i = 0; i < nzones; ++i) {
			zp = &zones[i];
			if (FUNC7(zp->z_rule, rp->r_name) != 0)
				continue;
			zp->z_rules = rp;
			zp->z_nrules = out - base;
		}
	}
	for (i = 0; i < nzones; ++i) {
		zp = &zones[i];
		if (zp->z_nrules == 0) {
			/*
			** Maybe we have a local standard time offset.
			*/
			FUNC1(zp->z_filename, zp->z_linenum);
			zp->z_stdoff = FUNC4(zp->z_rule, FUNC0("unruly zone"),
				TRUE);
			/*
			** Note, though, that if there's no rule,
			** a '%s' in the format is a bad thing.
			*/
			if (FUNC6(zp->z_format, '%') != 0)
				FUNC2(FUNC0("%s in ruleless zone"));
		}
	}
	if (errors)
		FUNC3(EXIT_FAILURE);
}