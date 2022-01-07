
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int ParseOpcode; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_BTYPE_BUFFER ;
 int ACPI_BTYPE_BUFFER_FIELD ;
 int ACPI_BTYPE_DDB_HANDLE ;
 int ACPI_BTYPE_DEVICE ;
 int ACPI_BTYPE_EVENT ;
 int ACPI_BTYPE_FIELD_UNIT ;
 int ACPI_BTYPE_INTEGER ;
 int ACPI_BTYPE_METHOD ;
 int ACPI_BTYPE_MUTEX ;
 int ACPI_BTYPE_OBJECTS_AND_REFS ;
 int ACPI_BTYPE_PACKAGE ;
 int ACPI_BTYPE_POWER ;
 int ACPI_BTYPE_REGION ;
 int ACPI_BTYPE_STRING ;
 int ACPI_BTYPE_THERMAL ;
UINT32
AnMapObjTypeToBtype (
    ACPI_PARSE_OBJECT *Op)
{

    switch (Op->Asl.ParseOpcode)
    {
    case 142:

        return (ACPI_BTYPE_BUFFER_FIELD);

    case 141:

        return (ACPI_BTYPE_BUFFER);

    case 140:

        return (ACPI_BTYPE_DDB_HANDLE);

    case 139:

        return (ACPI_BTYPE_DEVICE);

    case 138:

        return (ACPI_BTYPE_EVENT);

    case 137:

        return (ACPI_BTYPE_FIELD_UNIT);

    case 136:

        return (ACPI_BTYPE_INTEGER);

    case 135:

        return (ACPI_BTYPE_METHOD);

    case 134:

        return (ACPI_BTYPE_MUTEX);

    case 133:

        return (ACPI_BTYPE_REGION);

    case 132:

        return (ACPI_BTYPE_PACKAGE);

    case 131:

        return (ACPI_BTYPE_POWER);

    case 130:

        return (ACPI_BTYPE_STRING);

    case 129:

        return (ACPI_BTYPE_THERMAL);

    case 128:

        return (ACPI_BTYPE_OBJECTS_AND_REFS);

    default:

        return (0);
    }
}
