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
typedef  int INT32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  scalar_t__ ACPI_SIZE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static INT32
FUNC4 (
    char                    *Filename,
    char                    *Buffer,
    UINT32                  Length)
{
    FILE                    *File;
    ACPI_SIZE               Actual;


    File = FUNC1 (Filename, "wb");
    if (!File)
    {
        FUNC3 ("Could not open file %s\n", Filename);
        return (-1);
    }

    Actual = FUNC2 (Buffer, 1, (size_t) Length, File);
    if (Actual != Length)
    {
        FUNC3 ("Could not write to file %s\n", Filename);
    }

    FUNC0 (File);
    return ((INT32) Actual);
}