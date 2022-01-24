#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_7__ {scalar_t__ Integer; } ;
struct TYPE_8__ {TYPE_1__ Value; int /*<<< orphan*/  DisasmFlags; } ;
struct TYPE_9__ {TYPE_2__ Common; } ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_PARSEOP_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 

void
FUNC3 (
    ACPI_PARSE_OBJECT       *Op)
{

    /* The next Op contains the SpaceId */

    Op = FUNC2 (NULL, Op);

    /* Mark the Op as completed */

    Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;

    FUNC1 (", ");
    FUNC0 ((UINT8) Op->Common.Value.Integer);
}