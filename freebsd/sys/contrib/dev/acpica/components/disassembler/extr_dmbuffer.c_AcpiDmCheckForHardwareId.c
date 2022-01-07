
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {scalar_t__ AmlOpcode; TYPE_2__* Next; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int *,int ) ;
 scalar_t__ AML_PACKAGE_OP ;
 int AcpiDmGetHardwareIdType (TYPE_2__*) ;
 TYPE_2__* AcpiPsGetDepthNext (int *,TYPE_2__*) ;
 int AcpiPsGetName (TYPE_2__*) ;
 int METHOD_NAME__CID ;
 int METHOD_NAME__HID ;

void
AcpiDmCheckForHardwareId (
    ACPI_PARSE_OBJECT *Op)
{
    UINT32 Name;
    ACPI_PARSE_OBJECT *NextOp;




    Name = AcpiPsGetName (Op);
    if (!Name)
    {
        return;
    }

    NextOp = AcpiPsGetDepthNext (((void*)0), Op);
    if (!NextOp)
    {
        return;
    }



    if (ACPI_COMPARE_NAMESEG (&Name, METHOD_NAME__HID))
    {
        AcpiDmGetHardwareIdType (NextOp);
        return;
    }



    if (!ACPI_COMPARE_NAMESEG (&Name, METHOD_NAME__CID))
    {
        return;
    }



    if (NextOp->Common.AmlOpcode != AML_PACKAGE_OP)
    {
        AcpiDmGetHardwareIdType (NextOp);
        return;
    }



    NextOp = AcpiPsGetDepthNext (((void*)0), NextOp);
    if (!NextOp)
    {
        return;
    }



    NextOp = NextOp->Common.Next;
    while (NextOp)
    {
        AcpiDmGetHardwareIdType (NextOp);
        NextOp = NextOp->Common.Next;
    }
}
