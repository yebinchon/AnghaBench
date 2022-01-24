#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  NameSeg; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void
FUNC5 (
    ACPI_PARSE_OBJECT       *Op,
    char                    *Name)
{
    char                    *NameSeg;
    char                    PaddedNameSeg[4];


    if (!Name)
    {
        return;
    }

    /* Look for the last dot in the namepath */

    NameSeg = FUNC4 (Name, '.');
    if (NameSeg)
    {
        /* Found last dot, we have also found the final nameseg */

        NameSeg++;
        FUNC3 (NameSeg, PaddedNameSeg);
    }
    else
    {
        /* No dots in the namepath, there is only a single nameseg. */
        /* Handle prefixes */

        while (FUNC2 (*Name) ||
               FUNC1 (*Name))
        {
            Name++;
        }

        /* Remaining string should be one single nameseg */

        FUNC3 (Name, PaddedNameSeg);
    }

    FUNC0 (Op->Asl.NameSeg, PaddedNameSeg);
}