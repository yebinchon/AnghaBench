
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_7__ {int Ascii; } ;
struct TYPE_9__ {TYPE_1__ Signature; int Flags; int Length; int Address; } ;
struct TYPE_8__ {int Signature; int Length; } ;
typedef TYPE_2__ ACPI_TABLE_HEADER ;
typedef TYPE_3__ ACPI_TABLE_DESC ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 int ACPI_MOVE_32_TO_32 (int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;

void
AcpiTbInitTableDescriptor (
    ACPI_TABLE_DESC *TableDesc,
    ACPI_PHYSICAL_ADDRESS Address,
    UINT8 Flags,
    ACPI_TABLE_HEADER *Table)
{





    memset (TableDesc, 0, sizeof (ACPI_TABLE_DESC));
    TableDesc->Address = Address;
    TableDesc->Length = Table->Length;
    TableDesc->Flags = Flags;
    ACPI_MOVE_32_TO_32 (TableDesc->Signature.Ascii, Table->Signature);
}
