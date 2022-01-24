#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ count; int /*<<< orphan*/  text; } ;
struct TYPE_8__ {char* pad; } ;
typedef  TYPE_1__ FICL_VM ;
typedef  TYPE_2__ FICL_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  VM_QUIT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FICL_VM *pVM)
{
    FICL_STRING *pFS = (FICL_STRING *)pVM->pad;

    FUNC2(pVM, pFS, '\n');
    if (pFS->count > 0)
    {
        int err = FUNC1(pFS->text);
        if (err)
        {
            FUNC0(pVM->pad, "System call returned %d", err);
            FUNC3(pVM, pVM->pad, 1);
            FUNC4(pVM, VM_QUIT);
        }
    }
    else
    {
        FUNC3(pVM, "Warning (system): nothing happened", 1);
    }
    return;
}