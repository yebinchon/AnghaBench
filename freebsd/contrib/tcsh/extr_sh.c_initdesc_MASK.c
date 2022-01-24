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
 int /*<<< orphan*/  FOLDSTD ; 
 int /*<<< orphan*/  FSHDIAG ; 
 int /*<<< orphan*/  FSHIN ; 
 int /*<<< orphan*/  FSHOUT ; 
 scalar_t__ OLDSTD ; 
 scalar_t__ SHDIAG ; 
 int SHIN ; 
 scalar_t__ SHOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ didcch ; 
 scalar_t__ didfds ; 
 void* FUNC2 (scalar_t__) ; 
 void* isdiagatty ; 
 void* isoutatty ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(void)
{
#ifdef NLS_BUGS
#ifdef NLS_CATALOGS
    nlsclose();
#endif /* NLS_CATALOGS */
#endif /* NLS_BUGS */


    didfds = 0;			/* 0, 1, 2 aren't set up */
    (void) FUNC0(SHIN = FUNC1(0, FSHIN), 1);
    (void) FUNC0(SHOUT = FUNC1(1, FSHOUT), 1);
    (void) FUNC0(SHDIAG = FUNC1(2, FSHDIAG), 1);
    (void) FUNC0(OLDSTD = FUNC1(SHIN, FOLDSTD), 1);
#ifndef CLOSE_ON_EXEC
    didcch = 0;			/* Havent closed for child */
#endif /* CLOSE_ON_EXEC */
    if (SHDIAG >= 0)
	isdiagatty = FUNC2(SHDIAG);
    else
    	isdiagatty = 0;
    if (SHDIAG >= 0)
	isoutatty = FUNC2(SHOUT);
    else
    	isoutatty = 0;
#ifdef NLS_BUGS
#ifdef NLS_CATALOGS
    nlsinit();
#endif /* NLS_CATALOGS */
#endif /* NLS_BUGS */
}