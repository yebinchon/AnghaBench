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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(void) {
    uint32_t tlbi;

    for ( tlbi = FUNC1(); tlbi<(uint32_t)FUNC2(); tlbi++ ) {
        FUNC0(tlbi);
    }
}