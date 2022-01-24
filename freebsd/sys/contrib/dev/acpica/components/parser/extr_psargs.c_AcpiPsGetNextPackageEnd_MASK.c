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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/ * Aml; } ;
typedef  TYPE_1__ ACPI_PARSE_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  PsGetNextPackageEnd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

UINT8 *
FUNC3 (
    ACPI_PARSE_STATE        *ParserState)
{
    UINT8                   *Start = ParserState->Aml;
    UINT32                  PackageLength;


    FUNC0 (PsGetNextPackageEnd);


    /* Function below updates ParserState->Aml */

    PackageLength = FUNC1 (ParserState);

    FUNC2 (Start + PackageLength); /* end of package */
}