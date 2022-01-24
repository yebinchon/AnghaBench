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
 scalar_t__ AsciiOnly ; 
 size_t FUNC0 (int) ; 
 int /*<<< orphan*/ * CcKeyMap ; 
 int /*<<< orphan*/  F_INSERT ; 
 scalar_t__ FUNC1 (size_t) ; 
 int NLSMapsAreInited ; 
 scalar_t__ NoNLSRebind ; 

void
FUNC2(void)
{
    int i;

    if (AsciiOnly)
	return;
    if (NoNLSRebind)
	return;
    for (i = 0200; i <= 0377; i++) {
	if (FUNC1(FUNC0(i))) {
	    CcKeyMap[FUNC0(i)] = F_INSERT;
	}
    }
    NLSMapsAreInited = 1;
}