#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  Name; } ;
struct TYPE_8__ {int /*<<< orphan*/  Arg; } ;
struct TYPE_7__ {int /*<<< orphan*/  Next; int /*<<< orphan*/  Parent; TYPE_2__ Value; int /*<<< orphan*/  AmlOpcode; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;
typedef  TYPE_4__ ACPI_OPCODE_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (
    ACPI_PARSE_OBJECT       *Op)
{
    const ACPI_OPCODE_INFO  *Info;


    Info = FUNC2 (Op->Common.AmlOpcode);

    FUNC1 ("Parser Op Descriptor:\n");
    FUNC1 ("%20.20s : %4.4X\n", "Opcode", Op->Common.AmlOpcode);

    FUNC0 (FUNC1 ("%20.20s : %s\n", "Opcode Name",
        Info->Name));

    FUNC1 ("%20.20s : %p\n", "Value/ArgList", Op->Common.Value.Arg);
    FUNC1 ("%20.20s : %p\n", "Parent", Op->Common.Parent);
    FUNC1 ("%20.20s : %p\n", "NextOp", Op->Common.Next);
}