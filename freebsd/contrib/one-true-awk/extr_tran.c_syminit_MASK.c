#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char* sval; int /*<<< orphan*/  fval; } ;

/* Variables and functions */
 int ARR ; 
 int /*<<< orphan*/  CCON ; 
 int CON ; 
 char** CONVFMT ; 
 int DONTFREE ; 
 char** FILENAME ; 
 int /*<<< orphan*/ * FNR ; 
 char** FS ; 
 int /*<<< orphan*/ * NF ; 
 int /*<<< orphan*/ * NR ; 
 int NUM ; 
 char** OFMT ; 
 char** OFS ; 
 char** ORS ; 
 int /*<<< orphan*/ * RLENGTH ; 
 char** RS ; 
 int /*<<< orphan*/ * RSTART ; 
 int STR ; 
 char** SUBSEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* fnrloc ; 
 TYPE_1__* fsloc ; 
 TYPE_1__* literal0 ; 
 TYPE_1__* nfloc ; 
 TYPE_1__* nrloc ; 
 TYPE_1__* nullloc ; 
 int /*<<< orphan*/  nullnode ; 
 TYPE_1__* ofsloc ; 
 TYPE_1__* orsloc ; 
 TYPE_1__* rlengthloc ; 
 TYPE_1__* rsloc ; 
 TYPE_1__* rstartloc ; 
 TYPE_1__* FUNC1 (char*,char*,double,int,scalar_t__) ; 
 TYPE_1__* subseploc ; 
 scalar_t__ symtab ; 
 TYPE_1__* symtabloc ; 

void FUNC2(void)	/* initialize symbol table with builtin vars */
{
	literal0 = FUNC1("0", "0", 0.0, NUM|STR|CON|DONTFREE, symtab);
	/* this is used for if(x)... tests: */
	nullloc = FUNC1("$zero&null", "", 0.0, NUM|STR|CON|DONTFREE, symtab);
	nullnode = FUNC0(nullloc, CCON);

	fsloc = FUNC1("FS", " ", 0.0, STR|DONTFREE, symtab);
	FS = &fsloc->sval;
	rsloc = FUNC1("RS", "\n", 0.0, STR|DONTFREE, symtab);
	RS = &rsloc->sval;
	ofsloc = FUNC1("OFS", " ", 0.0, STR|DONTFREE, symtab);
	OFS = &ofsloc->sval;
	orsloc = FUNC1("ORS", "\n", 0.0, STR|DONTFREE, symtab);
	ORS = &orsloc->sval;
	OFMT = &FUNC1("OFMT", "%.6g", 0.0, STR|DONTFREE, symtab)->sval;
	CONVFMT = &FUNC1("CONVFMT", "%.6g", 0.0, STR|DONTFREE, symtab)->sval;
	FILENAME = &FUNC1("FILENAME", "", 0.0, STR|DONTFREE, symtab)->sval;
	nfloc = FUNC1("NF", "", 0.0, NUM, symtab);
	NF = &nfloc->fval;
	nrloc = FUNC1("NR", "", 0.0, NUM, symtab);
	NR = &nrloc->fval;
	fnrloc = FUNC1("FNR", "", 0.0, NUM, symtab);
	FNR = &fnrloc->fval;
	subseploc = FUNC1("SUBSEP", "\034", 0.0, STR|DONTFREE, symtab);
	SUBSEP = &subseploc->sval;
	rstartloc = FUNC1("RSTART", "", 0.0, NUM, symtab);
	RSTART = &rstartloc->fval;
	rlengthloc = FUNC1("RLENGTH", "", 0.0, NUM, symtab);
	RLENGTH = &rlengthloc->fval;
	symtabloc = FUNC1("SYMTAB", "", 0.0, ARR, symtab);
	symtabloc->sval = (char *) symtab;
}