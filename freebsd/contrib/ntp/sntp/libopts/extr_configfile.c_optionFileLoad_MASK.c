#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_1__ tOptions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char** FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*) ; 

int
FUNC4(tOptions * opts, char const * prog)
{
    if (! FUNC0(FUNC3(opts, prog)))
        return -1;

    /*
     * The pointer to the program name is "const".  However, the
     * structure is in writable memory, so we coerce the address
     * of this pointer to point to writable memory.
     */
    {
        char const ** pp = FUNC1(&(opts->pzProgName));
        *pp = prog;
    }

    FUNC2(opts);
    return 0;
}