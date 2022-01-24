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
typedef  scalar_t__ UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  Order; int /*<<< orphan*/  HorizontalOffset; int /*<<< orphan*/  VerticalOffset; int /*<<< orphan*/  Rotation; int /*<<< orphan*/  Reference; int /*<<< orphan*/  CardCageNumber; int /*<<< orphan*/  CabinetNumber; int /*<<< orphan*/  OspmEjectRequired; int /*<<< orphan*/  Ejectable; int /*<<< orphan*/  Bay; int /*<<< orphan*/  GroupPosition; int /*<<< orphan*/  GroupToken; int /*<<< orphan*/  GroupOrientation; int /*<<< orphan*/  Shape; int /*<<< orphan*/  HorizontalPosition; int /*<<< orphan*/  VerticalPosition; int /*<<< orphan*/  Panel; int /*<<< orphan*/  Lid; int /*<<< orphan*/  Dock; int /*<<< orphan*/  UserVisible; int /*<<< orphan*/  Height; int /*<<< orphan*/  Width; int /*<<< orphan*/  Blue; int /*<<< orphan*/  Green; int /*<<< orphan*/  Red; int /*<<< orphan*/  IgnoreColor; int /*<<< orphan*/  Revision; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_PLD_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ACPI_PLD_OUTPUT08 ; 
 int /*<<< orphan*/  ACPI_PLD_OUTPUT08P ; 
 int /*<<< orphan*/  ACPI_PLD_OUTPUT16 ; 
 int /*<<< orphan*/  ACPI_PLD_OUTPUT16P ; 
 int /*<<< orphan*/  ACPI_PLD_OUTPUTSTR ; 
 scalar_t__ ACPI_PLD_REV1_BUFFER_SIZE ; 
 scalar_t__ ACPI_PLD_REV2_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_PldHorizontalPositionList ; 
 int /*<<< orphan*/  AcpiGbl_PldPanelList ; 
 int /*<<< orphan*/  AcpiGbl_PldShapeList ; 
 int /*<<< orphan*/  AcpiGbl_PldVerticalPositionList ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5 (
    UINT32                  Level,
    UINT8                   *ByteData,
    UINT32                  ByteCount)
{
    ACPI_PLD_INFO           *PldInfo;
    ACPI_STATUS             Status;


    /* Check for valid byte count */

    if (ByteCount < ACPI_PLD_REV1_BUFFER_SIZE)
    {
        return;
    }

    /* Convert _PLD buffer to local _PLD struct */

    Status = FUNC2 (ByteData, ByteCount, &PldInfo);
    if (FUNC0 (Status))
    {
        return;
    }

    FUNC4 ("\n");

    /* First 32-bit dword */

    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Revision", PldInfo->Revision);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_IgnoreColor", PldInfo->IgnoreColor);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Red", PldInfo->Red);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Green", PldInfo->Green);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Blue", PldInfo->Blue);

    /* Second 32-bit dword */

    FUNC4 (ACPI_PLD_OUTPUT16,  "PLD_Width", PldInfo->Width);
    FUNC4 (ACPI_PLD_OUTPUT16,  "PLD_Height", PldInfo->Height);

    /* Third 32-bit dword */

    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_UserVisible", PldInfo->UserVisible);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Dock", PldInfo->Dock);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Lid", PldInfo->Lid);
    FUNC4 (ACPI_PLD_OUTPUTSTR, "PLD_Panel",
        FUNC3(PldInfo->Panel, AcpiGbl_PldPanelList));

    FUNC4 (ACPI_PLD_OUTPUTSTR, "PLD_VerticalPosition",
        FUNC3(PldInfo->VerticalPosition, AcpiGbl_PldVerticalPositionList));

    FUNC4 (ACPI_PLD_OUTPUTSTR, "PLD_HorizontalPosition",
        FUNC3(PldInfo->HorizontalPosition, AcpiGbl_PldHorizontalPositionList));

    FUNC4 (ACPI_PLD_OUTPUTSTR, "PLD_Shape",
        FUNC3(PldInfo->Shape, AcpiGbl_PldShapeList));
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_GroupOrientation", PldInfo->GroupOrientation);

    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_GroupToken", PldInfo->GroupToken);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_GroupPosition", PldInfo->GroupPosition);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Bay", PldInfo->Bay);

    /* Fourth 32-bit dword */

    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Ejectable", PldInfo->Ejectable);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_EjectRequired", PldInfo->OspmEjectRequired);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_CabinetNumber", PldInfo->CabinetNumber);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_CardCageNumber", PldInfo->CardCageNumber);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Reference", PldInfo->Reference);
    FUNC4 (ACPI_PLD_OUTPUT08,  "PLD_Rotation", PldInfo->Rotation);

    if (ByteCount >= ACPI_PLD_REV2_BUFFER_SIZE)
    {
        FUNC4 (ACPI_PLD_OUTPUT08, "PLD_Order", PldInfo->Order);

        /* Fifth 32-bit dword */

        FUNC4 (ACPI_PLD_OUTPUT16,  "PLD_VerticalOffset", PldInfo->VerticalOffset);
        FUNC4 (ACPI_PLD_OUTPUT16P, "PLD_HorizontalOffset", PldInfo->HorizontalOffset);
    }
    else /* Rev 1 buffer */
    {
        FUNC4 (ACPI_PLD_OUTPUT08P, "PLD_Order", PldInfo->Order);
    }

    FUNC1 (PldInfo);
}