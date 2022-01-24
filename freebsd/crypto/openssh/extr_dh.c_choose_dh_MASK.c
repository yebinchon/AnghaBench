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
struct dhgroup {int size; int /*<<< orphan*/  p; int /*<<< orphan*/  g; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int _PATH_DH_MODULI ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,struct dhgroup*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

DH *
FUNC12(int min, int wantbits, int max)
{
	FILE *f;
	char *line = NULL;
	size_t linesize = 0;
	int best, bestcount, which, linenum;
	struct dhgroup dhg;

	if ((f = FUNC5(_PATH_DH_MODULI, "r")) == NULL) {
		FUNC8("WARNING: could not open %s (%s), using fixed modulus",
		    _PATH_DH_MODULI, FUNC11(errno));
		return (FUNC3(max));
	}

	linenum = 0;
	best = bestcount = 0;
	while (FUNC7(&line, &linesize, f) != -1) {
		linenum++;
		if (!FUNC9(linenum, line, &dhg))
			continue;
		FUNC0(dhg.g);
		FUNC0(dhg.p);

		if (dhg.size > max || dhg.size < min)
			continue;

		if ((dhg.size > wantbits && dhg.size < best) ||
		    (dhg.size > best && best < wantbits)) {
			best = dhg.size;
			bestcount = 0;
		}
		if (dhg.size == best)
			bestcount++;
	}
	FUNC6(line);
	line = NULL;
	linesize = 0;
	FUNC10(f);

	if (bestcount == 0) {
		FUNC4(f);
		FUNC8("WARNING: no suitable primes in %s", _PATH_DH_MODULI);
		return (FUNC3(max));
	}

	linenum = 0;
	which = FUNC1(bestcount);
	while (FUNC7(&line, &linesize, f) != -1) {
		if (!FUNC9(linenum, line, &dhg))
			continue;
		if ((dhg.size > max || dhg.size < min) ||
		    dhg.size != best ||
		    linenum++ != which) {
			FUNC0(dhg.g);
			FUNC0(dhg.p);
			continue;
		}
		break;
	}
	FUNC6(line);
	line = NULL;
	FUNC4(f);
	if (linenum != which+1) {
		FUNC8("WARNING: line %d disappeared in %s, giving up",
		    which, _PATH_DH_MODULI);
		return (FUNC3(max));
	}

	return (FUNC2(dhg.g, dhg.p));
}