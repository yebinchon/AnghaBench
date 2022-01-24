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
 int /*<<< orphan*/  OCTEON_FEATURE_PKND ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void *buffer, int buffer_size)
{
    FUNC3("POW Display Start\n");

    if (FUNC2(OCTEON_FEATURE_PKND))
        FUNC1(buffer, buffer_size);
    else
        FUNC0(buffer, buffer_size);
        
    FUNC3("POW Display End\n");
    return;
}