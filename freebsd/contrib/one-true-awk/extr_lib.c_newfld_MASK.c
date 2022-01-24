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
typedef  int /*<<< orphan*/  Awkfloat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int lastfld ; 
 int nfields ; 
 int /*<<< orphan*/  nfloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(int n)	/* add field n after end of existing lastfld */
{
	if (n > nfields)
		FUNC1(n);
	FUNC0(lastfld+1, n);
	lastfld = n;
	FUNC2(nfloc, (Awkfloat) n);
}