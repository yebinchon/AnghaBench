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
struct TYPE_4__ {scalar_t__ Signature; } ;
typedef  TYPE_1__ ACPI_DMTABLE_DATA ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,scalar_t__) ; 
 TYPE_1__* AcpiDmTableData ; 

const ACPI_DMTABLE_DATA *
FUNC1 (
    char                    *Signature)
{
    const ACPI_DMTABLE_DATA *Info;


    for (Info = AcpiDmTableData; Info->Signature; Info++)
    {
        if (FUNC0 (Signature, Info->Signature))
        {
            return (Info);
        }
    }

    return (NULL);
}