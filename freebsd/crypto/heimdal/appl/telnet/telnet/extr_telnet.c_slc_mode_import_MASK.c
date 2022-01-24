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
 int /*<<< orphan*/  SLC_IMPORT ; 
 int /*<<< orphan*/  SLC_RVALUE ; 
 int /*<<< orphan*/  TELOPT_LINEMODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  slc_mode ; 

void
FUNC2(int def)
{
    slc_mode = def ? SLC_IMPORT : SLC_RVALUE;
    if (FUNC0(TELOPT_LINEMODE))
	FUNC1(def);
}