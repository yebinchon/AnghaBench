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
struct TYPE_4__ {scalar_t__ CvFilename; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ AcpiGbl_CurrentFilename ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN
FUNC1(
    ACPI_PARSE_OBJECT       *Op)
{

    if (Op->Common.CvFilename   &&
        AcpiGbl_CurrentFilename &&
        FUNC0(Op->Common.CvFilename, AcpiGbl_CurrentFilename))
    {
        return (TRUE);
    }

    return (FALSE);
}