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
typedef  scalar_t__ UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 

UINT32
FUNC3 (
    void                    *Aml)
{
    FUNC0 ();


    /*
     * Get the Resource Length (does not include header length) and add
     * the header length (depends on if this is a small or large resource)
     */
    return (FUNC2 (Aml) +
        FUNC1 (Aml));
}