#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* sval; int /*<<< orphan*/  nval; } ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ dollar0 ; 
 char* fields ; 
 TYPE_1__** fldtab ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int nfields ; 
 char* record ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(unsigned int n)
{
	if ( (record = (char *) FUNC2(n)) == NULL
	  || (fields = (char *) FUNC2(n+1)) == NULL
	  || (fldtab = (Cell **) FUNC2((nfields+2) * sizeof(Cell *))) == NULL
	  || (fldtab[0] = (Cell *) FUNC2(sizeof(Cell))) == NULL )
		FUNC0("out of space for $0 and fields");
	*record = '\0';
	*fldtab[0] = dollar0;
	fldtab[0]->sval = record;
	fldtab[0]->nval = FUNC3("0");
	FUNC1(1, nfields);
}