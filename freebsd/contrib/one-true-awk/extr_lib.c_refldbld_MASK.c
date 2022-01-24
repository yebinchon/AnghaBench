#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int initstat; } ;
typedef  TYPE_1__ fa ;
struct TYPE_7__ {char* sval; int tval; } ;

/* Variables and functions */
 int DONTFREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FLD ; 
 int STR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* fields ; 
 int fieldssize ; 
 TYPE_4__** fldtab ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char const*) ; 
 int nfields ; 
 char const* patbeg ; 
 int patlen ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(const char *rec, const char *fs)	/* build fields from reg expr in FS */
{
	/* this relies on having fields[] the same length as $0 */
	/* the fields are all stored in this one array with \0's */
	char *fr;
	int i, tempstat, n;
	fa *pfa;

	n = FUNC8(rec);
	if (n > fieldssize) {
		FUNC10(fields);
		if ((fields = (char *) FUNC5(n+1)) == NULL)
			FUNC0("out of space for fields in refldbld %d", n);
		fieldssize = n;
	}
	fr = fields;
	*fr = '\0';
	if (*rec == '\0')
		return 0;
	pfa = FUNC4(fs, 1);
	   FUNC1( ("into refldbld, rec = <%s>, pat = <%s>\n", rec, fs) );
	tempstat = pfa->initstat;
	for (i = 1; ; i++) {
		if (i > nfields)
			FUNC3(i);
		if (FUNC2(fldtab[i]))
			FUNC10(fldtab[i]->sval);
		fldtab[i]->tval = FLD | STR | DONTFREE;
		fldtab[i]->sval = fr;
		   FUNC1( ("refldbld: i=%d\n", i) );
		if (FUNC6(pfa, rec)) {
			pfa->initstat = 2;	/* horrible coupling to b.c */
			   FUNC1( ("match %s (%d chars)\n", patbeg, patlen) );
			FUNC9(fr, rec, patbeg-rec);
			fr += patbeg - rec + 1;
			*(fr-1) = '\0';
			rec = patbeg + patlen;
		} else {
			   FUNC1( ("no match %s\n", rec) );
			FUNC7(fr, rec);
			pfa->initstat = tempstat;
			break;
		}
	}
	return i;		
}