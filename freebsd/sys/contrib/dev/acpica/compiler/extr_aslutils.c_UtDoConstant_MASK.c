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
typedef  int /*<<< orphan*/  UINT64 ;
struct TYPE_2__ {int /*<<< orphan*/  Filename; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 size_t ASL_FILE_INPUT ; 
 int /*<<< orphan*/  ASL_MSG_SYNTAX ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  AslGbl_CurrentColumn ; 
 int /*<<< orphan*/  AslGbl_CurrentLineNumber ; 
 int /*<<< orphan*/  AslGbl_CurrentLineOffset ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  AslGbl_LogicalLineNumber ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

UINT64
FUNC5 (
    char                    *String)
{
    ACPI_STATUS             Status;
    UINT64                  ConvertedInteger;
    char                    ErrBuf[64];


    Status = FUNC2 (String, &ConvertedInteger);
    if (FUNC0 (Status))
    {
        FUNC4 (ErrBuf, "While creating 64-bit constant: %s\n",
            FUNC1 (Status));

        FUNC3 (ASL_ERROR, ASL_MSG_SYNTAX, AslGbl_CurrentLineNumber,
            AslGbl_LogicalLineNumber, AslGbl_CurrentLineOffset,
            AslGbl_CurrentColumn, AslGbl_Files[ASL_FILE_INPUT].Filename, ErrBuf);
    }

    return (ConvertedInteger);
}