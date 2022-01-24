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
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;
typedef  int /*<<< orphan*/  SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int TRUE ; 
 scalar_t__ orig_pair ; 

__attribute__((used)) static bool
FUNC3(TERMINAL_CONTROL_BLOCK * TCB)
{
    bool result = FALSE;
    SCREEN *sp;

    FUNC0();
    FUNC2();

    if (orig_pair != 0) {
	FUNC1("orig_pair", orig_pair);
	result = TRUE;
    }
    return result;
}