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
typedef  size_t UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/  Handle; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_MSG_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (void*,int,size_t,int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC4 (
    UINT32                  FileId,
    void                    *Buffer,
    UINT32                  Length)
{
    UINT32                  Actual;


    /* Read and check for error */

    Actual = FUNC3 (Buffer, 1, Length, AslGbl_Files[FileId].Handle);
    if (Actual < Length)
    {
        if (FUNC2 (AslGbl_Files[FileId].Handle))
        {
            /* End-of-file, just return error */

            return (AE_ERROR);
        }

        FUNC1 (FileId, ASL_MSG_READ);
        FUNC0 ();
    }

    return (AE_OK);
}