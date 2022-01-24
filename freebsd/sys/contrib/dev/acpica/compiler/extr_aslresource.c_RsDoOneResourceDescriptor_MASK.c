#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_92__   TYPE_86__ ;
typedef  struct TYPE_91__   TYPE_5__ ;
typedef  struct TYPE_90__   TYPE_4__ ;
typedef  struct TYPE_89__   TYPE_3__ ;
typedef  struct TYPE_88__   TYPE_2__ ;
typedef  struct TYPE_87__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
struct TYPE_87__ {int /*<<< orphan*/  Integer; } ;
struct TYPE_88__ {int ParseOpcode; char* ParseOpName; int /*<<< orphan*/  Extra; int /*<<< orphan*/  FinalAmlLength; TYPE_1__ Value; int /*<<< orphan*/  CompileFlags; } ;
struct TYPE_92__ {TYPE_2__ Asl; } ;
struct TYPE_91__ {int /*<<< orphan*/  DescriptorType; } ;
struct TYPE_90__ {TYPE_86__* DescriptorTypeOp; int /*<<< orphan*/  CurrentByteOffset; } ;
struct TYPE_89__ {scalar_t__ Buffer; int /*<<< orphan*/  BufferLength; } ;
typedef  TYPE_3__ ASL_RESOURCE_NODE ;
typedef  TYPE_4__ ASL_RESOURCE_INFO ;
typedef  TYPE_5__ AML_RESOURCE ;

/* Variables and functions */
#define  ACPI_RSTATE_DEPENDENT_LIST 173 
#define  ACPI_RSTATE_NORMAL 172 
#define  ACPI_RSTATE_START_DEPENDENT 171 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_DEPENDENT_NESTING ; 
 int /*<<< orphan*/  ASL_MSG_MISSING_STARTDEPENDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_86__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OP_IS_RESOURCE_DESC ; 
#define  PARSEOP_DEFAULT_ARG 170 
#define  PARSEOP_DMA 169 
#define  PARSEOP_DWORDIO 168 
#define  PARSEOP_DWORDMEMORY 167 
#define  PARSEOP_DWORDSPACE 166 
#define  PARSEOP_ENDDEPENDENTFN 165 
#define  PARSEOP_ENDTAG 164 
#define  PARSEOP_EXTENDEDIO 163 
#define  PARSEOP_EXTENDEDMEMORY 162 
#define  PARSEOP_EXTENDEDSPACE 161 
#define  PARSEOP_FIXEDDMA 160 
#define  PARSEOP_FIXEDIO 159 
#define  PARSEOP_GPIO_INT 158 
#define  PARSEOP_GPIO_IO 157 
#define  PARSEOP_I2C_SERIALBUS 156 
#define  PARSEOP_I2C_SERIALBUS_V2 155 
#define  PARSEOP_INTERRUPT 154 
#define  PARSEOP_IO 153 
#define  PARSEOP_IRQ 152 
#define  PARSEOP_IRQNOFLAGS 151 
#define  PARSEOP_MEMORY24 150 
#define  PARSEOP_MEMORY32 149 
#define  PARSEOP_MEMORY32FIXED 148 
#define  PARSEOP_PINCONFIG 147 
#define  PARSEOP_PINFUNCTION 146 
#define  PARSEOP_PINGROUP 145 
#define  PARSEOP_PINGROUPCONFIG 144 
#define  PARSEOP_PINGROUPFUNCTION 143 
#define  PARSEOP_QWORDIO 142 
#define  PARSEOP_QWORDMEMORY 141 
#define  PARSEOP_QWORDSPACE 140 
#define  PARSEOP_REGISTER 139 
#define  PARSEOP_SPI_SERIALBUS 138 
#define  PARSEOP_SPI_SERIALBUS_V2 137 
#define  PARSEOP_STARTDEPENDENTFN 136 
#define  PARSEOP_STARTDEPENDENTFN_NOPRI 135 
#define  PARSEOP_UART_SERIALBUS 134 
#define  PARSEOP_UART_SERIALBUS_V2 133 
#define  PARSEOP_VENDORLONG 132 
#define  PARSEOP_VENDORSHORT 131 
#define  PARSEOP_WORDBUSNUMBER 130 
#define  PARSEOP_WORDIO 129 
#define  PARSEOP_WORDSPACE 128 
 TYPE_3__* FUNC1 (TYPE_4__*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 TYPE_3__* FUNC3 (TYPE_4__*) ; 
 TYPE_3__* FUNC4 (TYPE_4__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*) ; 
 TYPE_3__* FUNC6 (TYPE_4__*) ; 
 TYPE_3__* FUNC7 (TYPE_4__*) ; 
 TYPE_3__* FUNC8 (TYPE_4__*) ; 
 TYPE_3__* FUNC9 (TYPE_4__*) ; 
 TYPE_3__* FUNC10 (TYPE_4__*) ; 
 TYPE_3__* FUNC11 (TYPE_4__*) ; 
 TYPE_3__* FUNC12 (TYPE_4__*) ; 
 TYPE_3__* FUNC13 (TYPE_4__*) ; 
 TYPE_3__* FUNC14 (TYPE_4__*) ; 
 TYPE_3__* FUNC15 (TYPE_4__*) ; 
 TYPE_3__* FUNC16 (TYPE_4__*) ; 
 TYPE_3__* FUNC17 (TYPE_4__*) ; 
 TYPE_3__* FUNC18 (TYPE_4__*) ; 
 TYPE_3__* FUNC19 (TYPE_4__*) ; 
 TYPE_3__* FUNC20 (TYPE_4__*) ; 
 TYPE_3__* FUNC21 (TYPE_4__*) ; 
 TYPE_3__* FUNC22 (TYPE_4__*) ; 
 TYPE_3__* FUNC23 (TYPE_4__*) ; 
 TYPE_3__* FUNC24 (TYPE_4__*) ; 
 TYPE_3__* FUNC25 (TYPE_4__*) ; 
 TYPE_3__* FUNC26 (TYPE_4__*) ; 
 TYPE_3__* FUNC27 (TYPE_4__*) ; 
 TYPE_3__* FUNC28 (TYPE_4__*) ; 
 TYPE_3__* FUNC29 (TYPE_4__*) ; 
 TYPE_3__* FUNC30 (TYPE_4__*) ; 
 TYPE_3__* FUNC31 (TYPE_4__*) ; 
 TYPE_3__* FUNC32 (TYPE_4__*) ; 
 TYPE_3__* FUNC33 (TYPE_4__*) ; 
 TYPE_3__* FUNC34 (TYPE_4__*) ; 
 TYPE_3__* FUNC35 (TYPE_4__*) ; 
 TYPE_3__* FUNC36 (TYPE_4__*) ; 
 TYPE_3__* FUNC37 (TYPE_4__*) ; 
 TYPE_3__* FUNC38 (TYPE_4__*) ; 
 TYPE_3__* FUNC39 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC40 (char*,char*) ; 

ASL_RESOURCE_NODE *
FUNC41 (
    ASL_RESOURCE_INFO       *Info,
    UINT8                   *State)
{
    ASL_RESOURCE_NODE       *Rnode = NULL;


    /* Construct the resource */

    switch (Info->DescriptorTypeOp->Asl.ParseOpcode)
    {
    case PARSEOP_DMA:

        Rnode = FUNC1 (Info);
        break;

    case PARSEOP_FIXEDDMA:

        Rnode = FUNC10 (Info);
        break;

    case PARSEOP_DWORDIO:

        Rnode = FUNC2 (Info);
        break;

    case PARSEOP_DWORDMEMORY:

        Rnode = FUNC3 (Info);
        break;

    case PARSEOP_DWORDSPACE:

        Rnode = FUNC4 (Info);
        break;

    case PARSEOP_ENDDEPENDENTFN:

        switch (*State)
        {
        case ACPI_RSTATE_NORMAL:

            FUNC0 (ASL_ERROR, ASL_MSG_MISSING_STARTDEPENDENT,
                Info->DescriptorTypeOp, NULL);
            break;

        case ACPI_RSTATE_START_DEPENDENT:

            FUNC0 (ASL_ERROR, ASL_MSG_DEPENDENT_NESTING,
                Info->DescriptorTypeOp, NULL);
            break;

        case ACPI_RSTATE_DEPENDENT_LIST:
        default:

            break;
        }

        *State = ACPI_RSTATE_NORMAL;
        Rnode = FUNC5 (Info);
        break;

    case PARSEOP_ENDTAG:

        Rnode = FUNC6 (Info);
        break;

    case PARSEOP_EXTENDEDIO:

        Rnode = FUNC7 (Info);
        break;

    case PARSEOP_EXTENDEDMEMORY:

        Rnode = FUNC8 (Info);
        break;

    case PARSEOP_EXTENDEDSPACE:

        Rnode = FUNC9 (Info);
        break;

    case PARSEOP_FIXEDIO:

        Rnode = FUNC11 (Info);
        break;

    case PARSEOP_INTERRUPT:

        Rnode = FUNC16 (Info);
        break;

    case PARSEOP_IO:

        Rnode = FUNC17 (Info);
        break;

    case PARSEOP_IRQ:

        Rnode = FUNC18 (Info);
        break;

    case PARSEOP_IRQNOFLAGS:

        Rnode = FUNC19 (Info);
        break;

    case PARSEOP_MEMORY24:

        Rnode = FUNC20 (Info);
        break;

    case PARSEOP_MEMORY32:

        Rnode = FUNC21 (Info);
        break;

    case PARSEOP_MEMORY32FIXED:

        Rnode = FUNC22 (Info);
        break;

    case PARSEOP_QWORDIO:

        Rnode = FUNC28 (Info);
        break;

    case PARSEOP_QWORDMEMORY:

        Rnode = FUNC29 (Info);
        break;

    case PARSEOP_QWORDSPACE:

        Rnode = FUNC30 (Info);
        break;

    case PARSEOP_REGISTER:

        Rnode = FUNC12 (Info);
        break;

    case PARSEOP_STARTDEPENDENTFN:

        switch (*State)
        {
        case ACPI_RSTATE_START_DEPENDENT:

            FUNC0 (ASL_ERROR, ASL_MSG_DEPENDENT_NESTING,
                Info->DescriptorTypeOp, NULL);
            break;

        case ACPI_RSTATE_NORMAL:
        case ACPI_RSTATE_DEPENDENT_LIST:
        default:

            break;
        }

        *State = ACPI_RSTATE_START_DEPENDENT;
        Rnode = FUNC32 (Info);
        *State = ACPI_RSTATE_DEPENDENT_LIST;
        break;

    case PARSEOP_STARTDEPENDENTFN_NOPRI:

        switch (*State)
        {
        case ACPI_RSTATE_START_DEPENDENT:

            FUNC0 (ASL_ERROR, ASL_MSG_DEPENDENT_NESTING,
                Info->DescriptorTypeOp, NULL);
            break;

        case ACPI_RSTATE_NORMAL:
        case ACPI_RSTATE_DEPENDENT_LIST:
        default:

            break;
        }

        *State = ACPI_RSTATE_START_DEPENDENT;
        Rnode = FUNC33 (Info);
        *State = ACPI_RSTATE_DEPENDENT_LIST;
        break;

    case PARSEOP_VENDORLONG:

        Rnode = FUNC35 (Info);
        break;

    case PARSEOP_VENDORSHORT:

        Rnode = FUNC36 (Info);
        break;

    case PARSEOP_WORDBUSNUMBER:

        Rnode = FUNC37 (Info);
        break;

    case PARSEOP_WORDIO:

        Rnode = FUNC38 (Info);
        break;

    case PARSEOP_WORDSPACE:

        Rnode = FUNC39 (Info);
        break;

    case PARSEOP_GPIO_INT:

        Rnode = FUNC13 (Info);
        break;

    case PARSEOP_GPIO_IO:

        Rnode = FUNC14 (Info);
        break;

    case PARSEOP_I2C_SERIALBUS:
    case PARSEOP_I2C_SERIALBUS_V2:

        Rnode = FUNC15 (Info);
        break;

    case PARSEOP_SPI_SERIALBUS:
    case PARSEOP_SPI_SERIALBUS_V2:

        Rnode = FUNC31 (Info);
        break;

    case PARSEOP_UART_SERIALBUS:
    case PARSEOP_UART_SERIALBUS_V2:

        Rnode = FUNC34 (Info);
        break;

    case PARSEOP_PINCONFIG:

        Rnode = FUNC23 (Info);
        break;

    case PARSEOP_PINFUNCTION:

        Rnode = FUNC24 (Info);
        break;

    case PARSEOP_PINGROUP:

        Rnode = FUNC26 (Info);
        break;

    case PARSEOP_PINGROUPFUNCTION:

        Rnode = FUNC27 (Info);
        break;

    case PARSEOP_PINGROUPCONFIG:

        Rnode = FUNC25 (Info);
        break;

    case PARSEOP_DEFAULT_ARG:

        /* Just ignore any of these, they are used as fillers/placeholders */
        break;

    default:

        FUNC40 ("Unknown resource descriptor type [%s]\n",
            Info->DescriptorTypeOp->Asl.ParseOpName);
        break;
    }

    /*
     * Mark original node as unused, but head of a resource descriptor.
     * This allows the resource to be installed in the namespace so that
     * references to the descriptor can be resolved.
     */
    Info->DescriptorTypeOp->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    Info->DescriptorTypeOp->Asl.CompileFlags = OP_IS_RESOURCE_DESC;
    Info->DescriptorTypeOp->Asl.Value.Integer = Info->CurrentByteOffset;

    if (Rnode)
    {
        Info->DescriptorTypeOp->Asl.FinalAmlLength = Rnode->BufferLength;
        Info->DescriptorTypeOp->Asl.Extra =
            ((AML_RESOURCE *) Rnode->Buffer)->DescriptorType;
    }

    return (Rnode);
}