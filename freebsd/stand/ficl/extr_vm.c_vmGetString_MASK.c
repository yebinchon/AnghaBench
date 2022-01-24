#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* text; scalar_t__ count; } ;
typedef  int /*<<< orphan*/  STRINGINFO ;
typedef  int /*<<< orphan*/  FICL_VM ;
typedef  TYPE_1__ FICL_STRING ;
typedef  scalar_t__ FICL_COUNT ;

/* Variables and functions */
 int FICL_STRING_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 

char *FUNC5(FICL_VM *pVM, FICL_STRING *spDest, char delimiter)
{
    STRINGINFO si = FUNC4(pVM, delimiter, 0);

    if (FUNC0(si) > FICL_STRING_MAX)
    {
        FUNC2(si, FICL_STRING_MAX);
    }

    FUNC3(spDest->text, FUNC1(si), FUNC0(si));
    spDest->text[FUNC0(si)] = '\0';
    spDest->count = (FICL_COUNT)FUNC0(si);

    return spDest->text + FUNC0(si) + 1;
}