#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* Path; struct TYPE_4__* Next; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_EXTERNAL_FILE ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_1__* AcpiGbl_ExternalFileList ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

ACPI_STATUS
FUNC5 (
    char                    *Pathname)
{
    ACPI_EXTERNAL_FILE      *ExternalFile;
    char                    *LocalPathname;


    if (!Pathname)
    {
        return (AE_OK);
    }

    LocalPathname = FUNC0 (FUNC4 (Pathname) + 1);
    if (!LocalPathname)
    {
        return (AE_NO_MEMORY);
    }

    ExternalFile = FUNC1 (sizeof (ACPI_EXTERNAL_FILE));
    if (!ExternalFile)
    {
        FUNC2 (LocalPathname);
        return (AE_NO_MEMORY);
    }

    /* Take a copy of the file pathname */

    FUNC3 (LocalPathname, Pathname);
    ExternalFile->Path = LocalPathname;

    if (AcpiGbl_ExternalFileList)
    {
        ExternalFile->Next = AcpiGbl_ExternalFileList;
    }

    AcpiGbl_ExternalFileList = ExternalFile;
    return (AE_OK);
}