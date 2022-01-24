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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  DT_FIELD ;
typedef  scalar_t__ ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * (*) (int /*<<< orphan*/ *)) ; 
 scalar_t__ ACPI_UINT32_MAX ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  ASL_EOF ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  AslGbl_CurrentLineBuffer ; 
 scalar_t__ AslGbl_CurrentLineNumber ; 
 scalar_t__ AslGbl_CurrentLineOffset ; 
 int /*<<< orphan*/ * AslGbl_FieldList ; 
 scalar_t__ AslGbl_InputByteCount ; 
 scalar_t__ AslGbl_NextLineOffset ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

DT_FIELD *
FUNC7 (
    FILE                    *Handle)
{
    ACPI_STATUS             Status;
    UINT32                  Offset;


    FUNC1 (DtScanFile);


    /* Get the file size */

    AslGbl_InputByteCount = FUNC3 (Handle);
    if (AslGbl_InputByteCount == ACPI_UINT32_MAX)
    {
        FUNC2 ();
    }

    AslGbl_CurrentLineNumber = 0;
    AslGbl_CurrentLineOffset = 0;
    AslGbl_NextLineOffset = 0;

    /* Scan line-by-line */

    while ((Offset = FUNC5 (Handle, 0)) != ASL_EOF)
    {
        FUNC0 ((ACPI_DB_PARSE, "Line %2.2u/%4.4X - %s",
            AslGbl_CurrentLineNumber, Offset, AslGbl_CurrentLineBuffer));

        Status = FUNC6 (AslGbl_CurrentLineBuffer,
            AslGbl_CurrentLineNumber, Offset);
        if (Status == AE_NOT_FOUND)
        {
            break;
        }
    }

    /* Dump the parse tree if debug enabled */

    FUNC4 (AslGbl_FieldList);
    return (AslGbl_FieldList);
}