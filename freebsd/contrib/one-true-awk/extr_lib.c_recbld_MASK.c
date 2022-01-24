#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* sval; int tval; } ;

/* Variables and functions */
 int DONTFREE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int* NF ; 
 int REC ; 
 int STR ; 
 int /*<<< orphan*/  FUNC1 (char**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char**,char*) ; 
 int donerec ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__** fldtab ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  inputFS ; 
 TYPE_1__* ofsloc ; 
 char* record ; 
 int /*<<< orphan*/  recsize ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(void)	/* create $0 from $1..$NF if necessary */
{
	int i;
	char *r, *p;
	char *sep = FUNC4(ofsloc);

	if (donerec == 1)
		return;
	r = record;
	for (i = 1; i <= *NF; i++) {
		p = FUNC4(fldtab[i]);
		if (!FUNC1(&record, &recsize, 1+FUNC5(p)+r-record, recsize, &r, "recbld 1"))
			FUNC0("created $0 `%.30s...' too long", record);
		while ((*r = *p++) != 0)
			r++;
		if (i < *NF) {
			if (!FUNC1(&record, &recsize, 2+FUNC5(sep)+r-record, recsize, &r, "recbld 2"))
				FUNC0("created $0 `%.30s...' too long", record);
			for (p = sep; (*r = *p++) != 0; )
				r++;
		}
	}
	if (!FUNC1(&record, &recsize, 2+r-record, recsize, &r, "recbld 3"))
		FUNC0("built giant record `%.30s...'", record);
	*r = '\0';
	   FUNC2( ("in recbld inputFS=%s, fldtab[0]=%p\n", inputFS, (void*)fldtab[0]) );

	if (FUNC3(fldtab[0]))
		FUNC6(fldtab[0]->sval);
	fldtab[0]->tval = REC | STR | DONTFREE;
	fldtab[0]->sval = record;

	   FUNC2( ("in recbld inputFS=%s, fldtab[0]=%p\n", inputFS, (void*)fldtab[0]) );
	   FUNC2( ("recbld = |%s|\n", record) );
	donerec = 1;
}