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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC0 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

bool
FUNC3(
	FILE *	expected,
	FILE *	actual
	)
{
	int currentLine = 1;

	char actualLine[1024];
	char expectedLine[1024];
	size_t lenAct = sizeof actualLine;
	size_t lenExp = sizeof expectedLine;
	
	while (  ( (FUNC0(actualLine, lenAct, actual)) != NULL)
	      && ( (FUNC0(expectedLine, lenExp, expected)) != NULL )
	      ) {

	
		if( FUNC2(actualLine,expectedLine) !=0 ){
			FUNC1("Comparision failed on line %d",currentLine);
			return FALSE;
		}

		currentLine++;
	}

	return TRUE;
}