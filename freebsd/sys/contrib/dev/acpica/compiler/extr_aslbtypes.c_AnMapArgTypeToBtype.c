
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ACPI_BTYPE_ALL_OBJECTS ;
 int ACPI_BTYPE_BUFFER ;
 int ACPI_BTYPE_COMPUTE_DATA ;
 int ACPI_BTYPE_DATA ;
 int ACPI_BTYPE_DATA_REFERENCE ;
 int ACPI_BTYPE_DDB_HANDLE ;
 int ACPI_BTYPE_DEBUG_OBJECT ;
 int ACPI_BTYPE_DEVICE_OBJECTS ;
 int ACPI_BTYPE_EVENT ;
 int ACPI_BTYPE_FIELD_UNIT ;
 int ACPI_BTYPE_INTEGER ;
 int ACPI_BTYPE_MUTEX ;
 int ACPI_BTYPE_NAMED_REFERENCE ;
 int ACPI_BTYPE_OBJECTS_AND_REFS ;
 int ACPI_BTYPE_PACKAGE ;
 int ACPI_BTYPE_REFERENCE_OBJECT ;
 int ACPI_BTYPE_REGION ;
 int ACPI_BTYPE_STRING ;
UINT32
AnMapArgTypeToBtype (
    UINT32 ArgType)
{

    switch (ArgType)
    {


    case 150:

        return (ACPI_BTYPE_OBJECTS_AND_REFS);

    case 135:

        return (ACPI_BTYPE_PACKAGE);

    case 141:

        return (ACPI_BTYPE_EVENT);

    case 137:

        return (ACPI_BTYPE_MUTEX);

    case 143:





        return (ACPI_BTYPE_DDB_HANDLE | ACPI_BTYPE_REFERENCE_OBJECT);






    case 139:
    case 129:
    case 149:
    case 148:
    case 146:

        return (ACPI_BTYPE_COMPUTE_DATA);



    case 138:

        return (ACPI_BTYPE_INTEGER);

    case 136:

        return (ACPI_BTYPE_ALL_OBJECTS);

    case 142:

        return (ACPI_BTYPE_DEVICE_OBJECTS);

    case 134:

        return (ACPI_BTYPE_NAMED_REFERENCE);

    case 128:





        return (ACPI_BTYPE_COMPUTE_DATA | ACPI_BTYPE_DEBUG_OBJECT |
            ACPI_BTYPE_REFERENCE_OBJECT);

    case 130:



        return (ACPI_BTYPE_DATA | ACPI_BTYPE_DEBUG_OBJECT |
            ACPI_BTYPE_REFERENCE_OBJECT);

    case 140:
    case 131:

        return (ACPI_BTYPE_OBJECTS_AND_REFS);



    case 145:




        return (ACPI_BTYPE_STRING | ACPI_BTYPE_BUFFER |
            ACPI_BTYPE_PACKAGE | ACPI_BTYPE_REFERENCE_OBJECT);

    case 147:



        return (ACPI_BTYPE_STRING | ACPI_BTYPE_BUFFER |
            ACPI_BTYPE_PACKAGE);

    case 133:



        return (ACPI_BTYPE_STRING | ACPI_BTYPE_REFERENCE_OBJECT);

    case 132:



        return (ACPI_BTYPE_REGION | ACPI_BTYPE_BUFFER |
            ACPI_BTYPE_FIELD_UNIT);

    case 144:



        return (ACPI_BTYPE_DATA_REFERENCE | ACPI_BTYPE_REFERENCE_OBJECT);

    default:

        break;
    }

    return (ACPI_BTYPE_OBJECTS_AND_REFS);
}
