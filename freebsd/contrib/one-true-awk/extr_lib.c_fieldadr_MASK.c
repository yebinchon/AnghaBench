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
typedef  int /*<<< orphan*/  Cell ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/ ** fldtab ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int nfields ; 

Cell *FUNC2(int n)	/* get nth field */
{
	if (n < 0)
		FUNC0("trying to access out of range field %d", n);
	if (n > nfields)	/* fields after NF are empty */
		FUNC1(n);	/* but does not increase NF */
	return(fldtab[n]);
}