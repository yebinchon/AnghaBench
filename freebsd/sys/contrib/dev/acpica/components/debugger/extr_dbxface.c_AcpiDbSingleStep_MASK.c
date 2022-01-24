#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_17__ {scalar_t__ AmlOpcode; TYPE_6__* Next; int /*<<< orphan*/  Aml; } ;
struct TYPE_19__ {TYPE_4__ Common; } ;
struct TYPE_14__ {int /*<<< orphan*/  AmlStart; } ;
struct TYPE_18__ {scalar_t__ MethodBreakpoint; scalar_t__ UserBreakpoint; TYPE_3__* ControlState; TYPE_1__ ParserState; } ;
struct TYPE_15__ {scalar_t__ Value; } ;
struct TYPE_16__ {TYPE_2__ Common; } ;
typedef  TYPE_5__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_6__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ACPI_LV_FUNCTIONS ; 
 scalar_t__ ACPI_LV_PARSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_ABORT_METHOD ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_CLASS_ARGUMENT 129 
#define  AML_CLASS_UNKNOWN 128 
 scalar_t__ AML_ELSE_OP ; 
 scalar_t__ AML_IF_OP ; 
 scalar_t__ AML_INT_METHODCALL_OP ; 
 scalar_t__ AML_INT_NAMEDFIELD_OP ; 
 scalar_t__ AML_WHILE_OP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_6__*) ; 
 scalar_t__ AcpiDbgLevel ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* AcpiGbl_AbortMethod ; 
 void* AcpiGbl_CmSingleStep ; 
 scalar_t__ AcpiGbl_DbOutputToFile ; 
 scalar_t__ AcpiGbl_DbThreadId ; 
 void* AcpiGbl_StepToNextCall ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 void* FALSE ; 
 void* TRUE ; 

ACPI_STATUS
FUNC10 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op,
    UINT32                  OpcodeClass)
{
    ACPI_PARSE_OBJECT       *Next;
    ACPI_STATUS             Status = AE_OK;
    UINT32                  OriginalDebugLevel;
    UINT32                  AmlOffset;


    FUNC0 ();


#ifndef ACPI_APPLICATION
    if (AcpiGbl_DbThreadId != FUNC7 ())
    {
        return (AE_OK);
    }
#endif

    /* Check the abort flag */

    if (AcpiGbl_AbortMethod)
    {
        AcpiGbl_AbortMethod = FALSE;
        return (AE_ABORT_METHOD);
    }

    AmlOffset = (UINT32) FUNC1 (Op->Common.Aml,
        WalkState->ParserState.AmlStart);

    /* Check for single-step breakpoint */

    if (WalkState->MethodBreakpoint &&
       (WalkState->MethodBreakpoint <= AmlOffset))
    {
        /* Check if the breakpoint has been reached or passed */
        /* Hit the breakpoint, resume single step, reset breakpoint */

        FUNC8 ("***Break*** at AML offset %X\n", AmlOffset);
        AcpiGbl_CmSingleStep = TRUE;
        AcpiGbl_StepToNextCall = FALSE;
        WalkState->MethodBreakpoint = 0;
    }

    /* Check for user breakpoint (Must be on exact Aml offset) */

    else if (WalkState->UserBreakpoint &&
            (WalkState->UserBreakpoint == AmlOffset))
    {
        FUNC8 ("***UserBreakpoint*** at AML offset %X\n",
            AmlOffset);
        AcpiGbl_CmSingleStep = TRUE;
        AcpiGbl_StepToNextCall = FALSE;
        WalkState->MethodBreakpoint = 0;
    }

    /*
     * Check if this is an opcode that we are interested in --
     * namely, opcodes that have arguments
     */
    if (Op->Common.AmlOpcode == AML_INT_NAMEDFIELD_OP)
    {
        return (AE_OK);
    }

    switch (OpcodeClass)
    {
    case AML_CLASS_UNKNOWN:
    case AML_CLASS_ARGUMENT:    /* constants, literals, etc. do nothing */

        return (AE_OK);

    default:

        /* All other opcodes -- continue */
        break;
    }

    /*
     * Under certain debug conditions, display this opcode and its operands
     */
    if ((AcpiGbl_DbOutputToFile)            ||
        (AcpiGbl_CmSingleStep)              ||
        (AcpiDbgLevel & ACPI_LV_PARSE))
    {
        if ((AcpiGbl_DbOutputToFile)        ||
            (AcpiDbgLevel & ACPI_LV_PARSE))
        {
            FUNC8 ("\nAML Debug: Next AML Opcode to execute:\n");
        }

        /*
         * Display this op (and only this op - zero out the NEXT field
         * temporarily, and disable parser trace output for the duration of
         * the display because we don't want the extraneous debug output)
         */
        OriginalDebugLevel = AcpiDbgLevel;
        AcpiDbgLevel &= ~(ACPI_LV_PARSE | ACPI_LV_FUNCTIONS);
        Next = Op->Common.Next;
        Op->Common.Next = NULL;

        /* Now we can disassemble and display it */

#ifdef ACPI_DISASSEMBLER
        AcpiDmDisassemble (WalkState, AcpiDbGetDisplayOp (WalkState, Op),
            ACPI_UINT32_MAX);
#else
        /*
         * The AML Disassembler is not configured - at least we can
         * display the opcode value and name
         */
        FUNC8 ("AML Opcode: %4.4X  %s\n", Op->Common.AmlOpcode,
            FUNC9 (Op->Common.AmlOpcode));
#endif

        if ((Op->Common.AmlOpcode == AML_IF_OP) ||
            (Op->Common.AmlOpcode == AML_WHILE_OP))
        {
            if (WalkState->ControlState->Common.Value)
            {
                FUNC8 ("Predicate = [True], IF block was executed\n");
            }
            else
            {
                FUNC8 ("Predicate = [False], Skipping IF block\n");
            }
        }
        else if (Op->Common.AmlOpcode == AML_ELSE_OP)
        {
            FUNC8 ("Predicate = [False], ELSE block was executed\n");
        }

        /* Restore everything */

        Op->Common.Next = Next;
        FUNC8 ("\n");
        if ((AcpiGbl_DbOutputToFile)        ||
            (AcpiDbgLevel & ACPI_LV_PARSE))
        {
            FUNC8 ("\n");
        }
        AcpiDbgLevel = OriginalDebugLevel;
    }

    /* If we are not single stepping, just continue executing the method */

    if (!AcpiGbl_CmSingleStep)
    {
        return (AE_OK);
    }

    /*
     * If we are executing a step-to-call command,
     * Check if this is a method call.
     */
    if (AcpiGbl_StepToNextCall)
    {
        if (Op->Common.AmlOpcode != AML_INT_METHODCALL_OP)
        {
            /* Not a method call, just keep executing */

            return (AE_OK);
        }

        /* Found a method call, stop executing */

        AcpiGbl_StepToNextCall = FALSE;
    }

    /*
     * If the next opcode is a method call, we will "step over" it
     * by default.
     */
    if (Op->Common.AmlOpcode == AML_INT_METHODCALL_OP)
    {
        /* Force no more single stepping while executing called method */

        AcpiGbl_CmSingleStep = FALSE;

        /*
         * Set the breakpoint on/before the call, it will stop execution
         * as soon as we return
         */
        WalkState->MethodBreakpoint = 1;  /* Must be non-zero! */
    }


    FUNC6 ();
    Status = FUNC3 (WalkState, Op);
    FUNC5 ();

    /* User commands complete, continue execution of the interrupted method */

    return (Status);
}