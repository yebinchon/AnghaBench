
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int Order; int HorizontalOffset; int VerticalOffset; int Rotation; int Reference; int CardCageNumber; int CabinetNumber; int OspmEjectRequired; int Ejectable; int Bay; int GroupPosition; int GroupToken; int GroupOrientation; int Shape; int HorizontalPosition; int VerticalPosition; int Panel; int Lid; int Dock; int UserVisible; int Height; int Width; int Blue; int Green; int Red; int IgnoreColor; int Revision; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_PLD_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_1__*) ;
 int ACPI_PLD_OUTPUT08 ;
 int ACPI_PLD_OUTPUT08P ;
 int ACPI_PLD_OUTPUT16 ;
 int ACPI_PLD_OUTPUT16P ;
 int ACPI_PLD_OUTPUTSTR ;
 scalar_t__ ACPI_PLD_REV1_BUFFER_SIZE ;
 scalar_t__ ACPI_PLD_REV2_BUFFER_SIZE ;
 int AcpiDecodePldBuffer (int *,scalar_t__,TYPE_1__**) ;
 int AcpiDmFindNameByIndex (int ,int ) ;
 int AcpiGbl_PldHorizontalPositionList ;
 int AcpiGbl_PldPanelList ;
 int AcpiGbl_PldShapeList ;
 int AcpiGbl_PldVerticalPositionList ;
 int AcpiOsPrintf (char*,...) ;

__attribute__((used)) static void
AcpiDmPldBuffer (
    UINT32 Level,
    UINT8 *ByteData,
    UINT32 ByteCount)
{
    ACPI_PLD_INFO *PldInfo;
    ACPI_STATUS Status;




    if (ByteCount < ACPI_PLD_REV1_BUFFER_SIZE)
    {
        return;
    }



    Status = AcpiDecodePldBuffer (ByteData, ByteCount, &PldInfo);
    if (ACPI_FAILURE (Status))
    {
        return;
    }

    AcpiOsPrintf ("\n");



    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Revision", PldInfo->Revision);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_IgnoreColor", PldInfo->IgnoreColor);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Red", PldInfo->Red);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Green", PldInfo->Green);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Blue", PldInfo->Blue);



    AcpiOsPrintf (ACPI_PLD_OUTPUT16, "PLD_Width", PldInfo->Width);
    AcpiOsPrintf (ACPI_PLD_OUTPUT16, "PLD_Height", PldInfo->Height);



    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_UserVisible", PldInfo->UserVisible);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Dock", PldInfo->Dock);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Lid", PldInfo->Lid);
    AcpiOsPrintf (ACPI_PLD_OUTPUTSTR, "PLD_Panel",
        AcpiDmFindNameByIndex(PldInfo->Panel, AcpiGbl_PldPanelList));

    AcpiOsPrintf (ACPI_PLD_OUTPUTSTR, "PLD_VerticalPosition",
        AcpiDmFindNameByIndex(PldInfo->VerticalPosition, AcpiGbl_PldVerticalPositionList));

    AcpiOsPrintf (ACPI_PLD_OUTPUTSTR, "PLD_HorizontalPosition",
        AcpiDmFindNameByIndex(PldInfo->HorizontalPosition, AcpiGbl_PldHorizontalPositionList));

    AcpiOsPrintf (ACPI_PLD_OUTPUTSTR, "PLD_Shape",
        AcpiDmFindNameByIndex(PldInfo->Shape, AcpiGbl_PldShapeList));
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_GroupOrientation", PldInfo->GroupOrientation);

    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_GroupToken", PldInfo->GroupToken);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_GroupPosition", PldInfo->GroupPosition);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Bay", PldInfo->Bay);



    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Ejectable", PldInfo->Ejectable);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_EjectRequired", PldInfo->OspmEjectRequired);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_CabinetNumber", PldInfo->CabinetNumber);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_CardCageNumber", PldInfo->CardCageNumber);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Reference", PldInfo->Reference);
    AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Rotation", PldInfo->Rotation);

    if (ByteCount >= ACPI_PLD_REV2_BUFFER_SIZE)
    {
        AcpiOsPrintf (ACPI_PLD_OUTPUT08, "PLD_Order", PldInfo->Order);



        AcpiOsPrintf (ACPI_PLD_OUTPUT16, "PLD_VerticalOffset", PldInfo->VerticalOffset);
        AcpiOsPrintf (ACPI_PLD_OUTPUT16P, "PLD_HorizontalOffset", PldInfo->HorizontalOffset);
    }
    else
    {
        AcpiOsPrintf (ACPI_PLD_OUTPUT08P, "PLD_Order", PldInfo->Order);
    }

    ACPI_FREE (PldInfo);
}
