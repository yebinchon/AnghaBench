#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int anchor; int use; scalar_t__ restr; } ;
typedef  TYPE_1__ fa ;

/* Variables and functions */
 int MAXLIN ; 
 int NFA ; 
 scalar_t__ compile_time ; 
 TYPE_1__** fatab ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int maxsetvec ; 
 TYPE_1__* FUNC2 (char const*,int) ; 
 int nfatab ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int* setvec ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int* tmpset ; 

fa *FUNC5(const char *s, int anchor)	/* returns dfa for reg expr s */
{
	int i, use, nuse;
	fa *pfa;
	static int now = 1;

	if (setvec == NULL) {	/* first time through any RE */
		maxsetvec = MAXLIN;
		setvec = (int *) FUNC1(maxsetvec * sizeof(int));
		tmpset = (int *) FUNC1(maxsetvec * sizeof(int));
		if (setvec == NULL || tmpset == NULL)
			FUNC3("out of space initializing makedfa");
	}

	if (compile_time)	/* a constant for sure */
		return FUNC2(s, anchor);
	for (i = 0; i < nfatab; i++)	/* is it there already? */
		if (fatab[i]->anchor == anchor
		  && FUNC4((const char *) fatab[i]->restr, s) == 0) {
			fatab[i]->use = now++;
			return fatab[i];
		}
	pfa = FUNC2(s, anchor);
	if (nfatab < NFA) {	/* room for another */
		fatab[nfatab] = pfa;
		fatab[nfatab]->use = now++;
		nfatab++;
		return pfa;
	}
	use = fatab[0]->use;	/* replace least-recently used */
	nuse = 0;
	for (i = 1; i < nfatab; i++)
		if (fatab[i]->use < use) {
			use = fatab[i]->use;
			nuse = i;
		}
	FUNC0(fatab[nuse]);
	fatab[nuse] = pfa;
	pfa->use = now++;
	return pfa;
}