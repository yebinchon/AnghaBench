
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int ParseOpcode; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_NOT_PACKAGE_ELEMENT ;
 int ACPI_RTYPE_BUFFER ;
 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_PACKAGE ;
 int ACPI_RTYPE_REFERENCE ;
 int ACPI_RTYPE_STRING ;
 int AE_OK ;
 int AE_TYPE ;
 int ASL_ERROR ;
 int ASL_MSG_RESERVED_OPERAND_TYPE ;
 int AcpiUtGetExpectedReturnTypes (char*,int) ;
 int AslError (int ,int ,TYPE_2__*,int ) ;
 int AslGbl_MsgBuffer ;
 char* AslGbl_StringBuffer ;
 char* UtGetOpName (int) ;
 int sprintf (int ,char*,char const*,char*,...) ;

ACPI_STATUS
ApCheckObjectType (
    const char *PredefinedName,
    ACPI_PARSE_OBJECT *Op,
    UINT32 ExpectedBtypes,
    UINT32 PackageIndex)
{
    UINT32 ReturnBtype;
    char *TypeName;


    if (!Op)
    {
        return (AE_TYPE);
    }



    switch (Op->Asl.ParseOpcode)
    {
    case 128:
    case 133:
    case 132:
    case 136:

        ReturnBtype = ACPI_RTYPE_INTEGER;
        TypeName = "Integer";
        break;

    case 130:

        ReturnBtype = ACPI_RTYPE_STRING;
        TypeName = "String";
        break;

    case 137:

        ReturnBtype = ACPI_RTYPE_BUFFER;
        TypeName = "Buffer";
        break;

    case 131:
    case 129:

        ReturnBtype = ACPI_RTYPE_PACKAGE;
        TypeName = "Package";
        break;

    case 135:
    case 134:
        if (PackageIndex != ACPI_NOT_PACKAGE_ELEMENT)
        {
            return (AE_OK);
        }

        ReturnBtype = ACPI_RTYPE_REFERENCE;
        TypeName = "Reference";
        break;

    default:



        TypeName = UtGetOpName (Op->Asl.ParseOpcode);
        goto TypeErrorExit;
    }



    if (ReturnBtype & ExpectedBtypes)
    {
        return (AE_OK);
    }


TypeErrorExit:



    AcpiUtGetExpectedReturnTypes (AslGbl_StringBuffer, ExpectedBtypes);

    if (PackageIndex == ACPI_NOT_PACKAGE_ELEMENT)
    {
        sprintf (AslGbl_MsgBuffer, "%4.4s: found %s, %s required",
            PredefinedName, TypeName, AslGbl_StringBuffer);
    }
    else
    {
        sprintf (AslGbl_MsgBuffer, "%4.4s: found %s at index %u, %s required",
            PredefinedName, TypeName, PackageIndex, AslGbl_StringBuffer);
    }

    AslError (ASL_ERROR, ASL_MSG_RESERVED_OPERAND_TYPE, Op, AslGbl_MsgBuffer);
    return (AE_TYPE);
}
