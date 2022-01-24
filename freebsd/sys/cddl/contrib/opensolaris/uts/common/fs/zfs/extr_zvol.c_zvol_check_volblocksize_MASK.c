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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDOM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_MINBLOCKSIZE ; 
 scalar_t__ SPA_OLD_MAXBLOCKSIZE ; 

int
FUNC2(uint64_t volblocksize)
{
	if (volblocksize < SPA_MINBLOCKSIZE ||
	    volblocksize > SPA_OLD_MAXBLOCKSIZE ||
	    !FUNC0(volblocksize))
		return (FUNC1(EDOM));

	return (0);
}