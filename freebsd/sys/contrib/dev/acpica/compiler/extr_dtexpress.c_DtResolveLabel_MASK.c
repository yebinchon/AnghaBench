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
typedef  char* UINT64 ;
struct TYPE_3__ {char* TableOffset; } ;
typedef  TYPE_1__ DT_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_DEBUG_OUTPUT ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_UNKNOWN_LABEL ; 
 int /*<<< orphan*/  AslGbl_CurrentField ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (char*) ; 

UINT64
FUNC3 (
    char                    *LabelString)
{
    DT_FIELD                *LabelField;


    FUNC0 (ASL_DEBUG_OUTPUT, "Resolve Label: %s\n", LabelString);

    /* Resolve a label reference to an integer (table offset) */

    if (*LabelString != '$')
    {
        return (0);
    }

    LabelField = FUNC2 (LabelString);
    if (!LabelField)
    {
        FUNC1 (ASL_ERROR, ASL_MSG_UNKNOWN_LABEL,
            AslGbl_CurrentField, LabelString);
        return (0);
    }

    /* All we need from the label is the offset in the table */

    FUNC0 (ASL_DEBUG_OUTPUT, "Resolved Label: 0x%8.8X\n",
        LabelField->TableOffset);

    return (LabelField->TableOffset);
}