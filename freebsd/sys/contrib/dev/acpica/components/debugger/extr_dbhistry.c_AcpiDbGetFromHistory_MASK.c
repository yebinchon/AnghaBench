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
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ AcpiGbl_NextCmdNum ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

char *
FUNC2 (
    char                    *CommandNumArg)
{
    UINT32                  CmdNum;


    if (CommandNumArg == NULL)
    {
        CmdNum = AcpiGbl_NextCmdNum - 1;
    }

    else
    {
        CmdNum = FUNC1 (CommandNumArg, NULL, 0);
    }

    return (FUNC0 (CmdNum));
}