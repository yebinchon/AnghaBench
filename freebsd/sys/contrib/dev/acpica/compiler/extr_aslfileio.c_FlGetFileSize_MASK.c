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

/* Variables and functions */
 size_t ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* AslGbl_Files ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

UINT32
FUNC2 (
    UINT32                  FileId)
{
    UINT32                  FileSize;


    FileSize = FUNC1 (AslGbl_Files[FileId].Handle);
    if (FileSize == ACPI_UINT32_MAX)
    {
        FUNC0();
    }

    return (FileSize);
}