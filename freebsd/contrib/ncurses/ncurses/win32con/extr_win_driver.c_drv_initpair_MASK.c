#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int* pairs; } ;
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;
typedef  int /*<<< orphan*/  SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int NUMPAIRS ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(TERMINAL_CONTROL_BLOCK * TCB,
	     int pair,
	     int f,
	     int b)
{
    SCREEN *sp;

    FUNC0();
    FUNC3();

    if ((pair > 0) && (pair < NUMPAIRS) && (f >= 0) && (f < 8)
	&& (b >= 0) && (b < 8)) {
	FUNC2(TCB)->pairs[pair] = FUNC1(true, f) | FUNC1(false, b);
    }
}