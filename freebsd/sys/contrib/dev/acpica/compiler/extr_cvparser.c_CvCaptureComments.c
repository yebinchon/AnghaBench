
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_8__ {int * Aml; } ;
struct TYPE_7__ {int Flags; } ;
struct TYPE_6__ {scalar_t__ PassNumber; TYPE_3__ ParserState; int * Aml; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef TYPE_2__ ACPI_OPCODE_INFO ;


 scalar_t__ ACPI_GET8 (int *) ;
 scalar_t__ ACPI_IMODE_LOAD_PASS1 ;
 int AML_DEFER ;
 int AcpiGbl_CaptureComments ;
 TYPE_2__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 int CvCaptureCommentsOnly (TYPE_3__*) ;

void
CvCaptureComments (
    ACPI_WALK_STATE *WalkState)
{
    UINT8 *Aml;
    UINT16 Opcode;
    const ACPI_OPCODE_INFO *OpInfo;


    if (!AcpiGbl_CaptureComments)
    {
        return;
    }





    Aml = WalkState->ParserState.Aml;
    Opcode = (UINT16) ACPI_GET8 (Aml);
    OpInfo = AcpiPsGetOpcodeInfo (Opcode);

    if (!(OpInfo->Flags & AML_DEFER) ||
        ((OpInfo->Flags & AML_DEFER) &&
        (WalkState->PassNumber != ACPI_IMODE_LOAD_PASS1)))
    {
        CvCaptureCommentsOnly (&WalkState->ParserState);
        WalkState->Aml = WalkState->ParserState.Aml;
    }

}
