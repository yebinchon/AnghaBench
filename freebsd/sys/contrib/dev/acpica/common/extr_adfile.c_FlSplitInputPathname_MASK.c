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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char) ; 

ACPI_STATUS
FUNC3 (
    char                    *InputPath,
    char                    **OutDirectoryPath,
    char                    **OutFilename)
{
    char                    *Substring;
    char                    *DirectoryPath;
    char                    *Filename;


    if (OutDirectoryPath)
    {
        *OutDirectoryPath = NULL;
    }

    if (!InputPath)
    {
        return (AE_OK);
    }

    /* Get the path to the input filename's directory */

    DirectoryPath = FUNC0 (InputPath);
    if (!DirectoryPath)
    {
        return (AE_NO_MEMORY);
    }

    /* Convert backslashes to slashes in the entire path */

    FUNC1 (DirectoryPath);

    /* Backup to last slash or colon */

    Substring = FUNC2 (DirectoryPath, '/');
    if (!Substring)
    {
        Substring = FUNC2 (DirectoryPath, ':');
    }

    /* Extract the simple filename */

    if (!Substring)
    {
        Filename = FUNC0 (DirectoryPath);
        DirectoryPath[0] = 0;
    }
    else
    {
        Filename = FUNC0 (Substring + 1);
        *(Substring+1) = 0;
    }

    if (!Filename)
    {
        return (AE_NO_MEMORY);
    }

    if (OutDirectoryPath)
    {
        *OutDirectoryPath = DirectoryPath;
    }

    if (OutFilename)
    {
        *OutFilename = Filename;
        return (AE_OK);
    }

    return (AE_OK);
}