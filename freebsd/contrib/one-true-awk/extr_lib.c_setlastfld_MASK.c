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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int lastfld ; 
 int nfields ; 

void FUNC3(int n)	/* set lastfld cleaning fldtab cells if necessary */
{
	if (n < 0)
		FUNC0("cannot set NF to a negative value");
	if (n > nfields)
		FUNC2(n);

	if (lastfld < n)
	    FUNC1(lastfld+1, n);
	else
	    FUNC1(n+1, lastfld);

	lastfld = n;
}