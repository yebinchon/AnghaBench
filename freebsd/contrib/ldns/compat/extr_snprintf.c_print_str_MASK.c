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

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char**,size_t*,int*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (char**,size_t*,int*,char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(char** at, size_t* left, int* ret, char* s,
	int minw, int precision, int prgiven, int minus)
{
	int w;
	/* with prec: no more than x characters from this string, stop at 0 */
	if(prgiven)
		w = FUNC0(s, precision);
	else	w = (int)FUNC3(s); /* up to the nul */
	if(w < minw && !minus)
		FUNC1(at, left, ret, ' ', minw - w);
	FUNC2(at, left, ret, s, w);
	if(w < minw && minus)
		FUNC1(at, left, ret, ' ', minw - w);
}