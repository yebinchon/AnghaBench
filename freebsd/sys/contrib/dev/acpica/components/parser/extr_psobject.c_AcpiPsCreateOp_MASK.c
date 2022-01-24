#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
struct TYPE_30__ {int Flags; int /*<<< orphan*/  Type; } ;
struct TYPE_27__ {scalar_t__ AmlOpcode; scalar_t__ ArgListLength; int /*<<< orphan*/  Flags; } ;
struct TYPE_26__ {scalar_t__* Data; scalar_t__ Length; } ;
struct TYPE_29__ {TYPE_3__ Common; TYPE_2__ Named; } ;
struct TYPE_24__ {scalar_t__ Aml; } ;
struct TYPE_28__ {scalar_t__ Opcode; scalar_t__ (* DescendingCallback ) (TYPE_4__*,TYPE_5__**) ;TYPE_5__* Op; TYPE_12__ ParserState; TYPE_1__* OpInfo; scalar_t__ Aml; } ;
struct TYPE_25__ {int Flags; } ;
typedef  TYPE_4__ ACPI_WALK_STATE ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_5__ ACPI_PARSE_OBJECT ;
typedef  TYPE_6__ ACPI_OPCODE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  ACPI_PARSEOP_TARGET ; 
 scalar_t__ AE_CTRL_PARSE_CONTINUE ; 
 scalar_t__ AE_CTRL_PARSE_PENDING ; 
 scalar_t__ AE_CTRL_PENDING ; 
 scalar_t__ AE_NOT_FOUND ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AML_BANK_FIELD_OP ; 
 int AML_CREATE ; 
 scalar_t__ AML_DECREMENT_OP ; 
 scalar_t__ AML_EXTERNAL_OP ; 
 int AML_HAS_TARGET ; 
 scalar_t__ AML_INCREMENT_OP ; 
 int AML_NAMED ; 
 scalar_t__ AcpiGbl_DisasmFlag ; 
 TYPE_5__* FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,scalar_t__*,TYPE_5__*,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (scalar_t__) ; 
 TYPE_5__* FUNC9 (TYPE_12__*) ; 
 scalar_t__ FUNC10 (TYPE_4__*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  PsCreateOp ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_4__*,TYPE_5__**) ; 

ACPI_STATUS
FUNC13 (
    ACPI_WALK_STATE         *WalkState,
    UINT8                   *AmlOpStart,
    ACPI_PARSE_OBJECT       **NewOp)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_PARSE_OBJECT       *Op;
    ACPI_PARSE_OBJECT       *NamedOp = NULL;
    ACPI_PARSE_OBJECT       *ParentScope;
    UINT8                   ArgumentCount;
    const ACPI_OPCODE_INFO  *OpInfo;


    FUNC1 (PsCreateOp, WalkState);


    Status = FUNC6 (WalkState);
    if (Status == AE_CTRL_PARSE_CONTINUE)
    {
        FUNC11 (AE_CTRL_PARSE_CONTINUE);
    }
    if (FUNC0 (Status))
    {
        FUNC11 (Status);
    }

    /* Create Op structure and append to parent's argument list */

    WalkState->OpInfo = FUNC8 (WalkState->Opcode);
    Op = FUNC2 (WalkState->Opcode, AmlOpStart);
    if (!Op)
    {
        FUNC11 (AE_NO_MEMORY);
    }

    if (WalkState->OpInfo->Flags & AML_NAMED)
    {
        Status = FUNC4 (WalkState, AmlOpStart, Op, &NamedOp);
        FUNC5 (Op);

#ifdef ACPI_ASL_COMPILER
        if (AcpiGbl_DisasmFlag && WalkState->Opcode == AML_EXTERNAL_OP &&
            Status == AE_NOT_FOUND)
        {
            /*
             * If parsing of AML_EXTERNAL_OP's name path fails, then skip
             * past this opcode and keep parsing. This is a much better
             * alternative than to abort the entire disassembler. At this
             * point, the ParserState is at the end of the namepath of the
             * external declaration opcode. Setting WalkState->Aml to
             * WalkState->ParserState.Aml + 2 moves increments the
             * WalkState->Aml past the object type and the paramcount of the
             * external opcode.
             */
            WalkState->Aml = WalkState->ParserState.Aml + 2;
            WalkState->ParserState.Aml = WalkState->Aml;
            return_ACPI_STATUS (AE_CTRL_PARSE_CONTINUE);
        }
#endif
        if (FUNC0 (Status))
        {
            FUNC11 (Status);
        }

        *NewOp = NamedOp;
        FUNC11 (AE_OK);
    }

    /* Not a named opcode, just allocate Op and append to parent */

    if (WalkState->OpInfo->Flags & AML_CREATE)
    {
        /*
         * Backup to beginning of CreateXXXfield declaration
         * BodyLength is unknown until we parse the body
         */
        Op->Named.Data = AmlOpStart;
        Op->Named.Length = 0;
    }

    if (WalkState->Opcode == AML_BANK_FIELD_OP)
    {
        /*
         * Backup to beginning of BankField declaration
         * BodyLength is unknown until we parse the body
         */
        Op->Named.Data = AmlOpStart;
        Op->Named.Length = 0;
    }

    ParentScope = FUNC9 (&(WalkState->ParserState));
    FUNC3 (ParentScope, Op);

    if (ParentScope)
    {
        OpInfo = FUNC8 (ParentScope->Common.AmlOpcode);
        if (OpInfo->Flags & AML_HAS_TARGET)
        {
            ArgumentCount = FUNC7 (OpInfo->Type);
            if (ParentScope->Common.ArgListLength > ArgumentCount)
            {
                Op->Common.Flags |= ACPI_PARSEOP_TARGET;
            }
        }

        /*
         * Special case for both Increment() and Decrement(), where
         * the lone argument is both a source and a target.
         */
        else if ((ParentScope->Common.AmlOpcode == AML_INCREMENT_OP) ||
                (ParentScope->Common.AmlOpcode == AML_DECREMENT_OP))
        {
            Op->Common.Flags |= ACPI_PARSEOP_TARGET;
        }
    }

    if (WalkState->DescendingCallback != NULL)
    {
        /*
         * Find the object. This will either insert the object into
         * the namespace or simply look it up
         */
        WalkState->Op = *NewOp = Op;

        Status = WalkState->DescendingCallback (WalkState, &Op);
        Status = FUNC10 (WalkState, Op, Status);
        if (Status == AE_CTRL_PENDING)
        {
            Status = AE_CTRL_PARSE_PENDING;
        }
    }

    FUNC11 (Status);
}