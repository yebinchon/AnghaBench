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
struct TYPE_2__ {char* Filename; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 size_t ASL_FILE_AML_OUTPUT ; 
 int /*<<< orphan*/  ASL_MSG_OUTPUT_FILENAME ; 
 int /*<<< orphan*/  AcpiGbl_CaptureComments ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  FILE_SUFFIX_AML_CODE ; 
 int /*<<< orphan*/  FILE_SUFFIX_CONVERT_AML ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,char*,char*) ; 

ACPI_STATUS
FUNC3 (
    char                    *FilenamePrefix)
{
    char                    *Filename;


    /* Output filename usually comes from the ASL itself */

    Filename = AslGbl_Files[ASL_FILE_AML_OUTPUT].Filename;
    if (!Filename)
    {
        /* Create the output AML filename */
        if (!AcpiGbl_CaptureComments)
        {
            Filename = FUNC1 (FilenamePrefix, FILE_SUFFIX_AML_CODE);
        }
        else
        {
            Filename = FUNC1 (FilenamePrefix, FILE_SUFFIX_CONVERT_AML);
        }
        if (!Filename)
        {
            FUNC0 (ASL_ERROR, ASL_MSG_OUTPUT_FILENAME,
                0, 0, 0, 0, NULL, NULL);
            return (AE_ERROR);
        }

        AslGbl_Files[ASL_FILE_AML_OUTPUT].Filename = Filename;
    }

    /* Open the output AML file in binary mode */

    FUNC2 (ASL_FILE_AML_OUTPUT, Filename, "w+b");
    return (AE_OK);
}