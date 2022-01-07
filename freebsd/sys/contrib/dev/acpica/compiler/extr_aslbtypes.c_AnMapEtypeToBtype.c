
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ACPI_BTYPE_BUFFER_FIELD ;
 int ACPI_BTYPE_COMPUTE_DATA ;
 int ACPI_BTYPE_DDB_HANDLE ;
 int ACPI_BTYPE_FIELD_UNIT ;
 int ACPI_BTYPE_INTEGER ;
 int ACPI_BTYPE_OBJECTS_AND_REFS ;
 int ACPI_BTYPE_PACKAGE ;
 int ACPI_BTYPE_REFERENCE_OBJECT ;
 int ACPI_TYPE_ANY ;




 int ACPI_TYPE_EXTERNAL_MAX ;
 int printf (char*,int) ;

__attribute__((used)) static UINT32
AnMapEtypeToBtype (
    UINT32 Etype)
{

    if (Etype == ACPI_TYPE_ANY)
    {
        return (ACPI_BTYPE_OBJECTS_AND_REFS);
    }



    if (Etype <= ACPI_TYPE_EXTERNAL_MAX)
    {





        switch (Etype)
        {
        case 136:

            return (ACPI_BTYPE_COMPUTE_DATA | ACPI_BTYPE_DDB_HANDLE);

        case 128:
        case 141:

            return (ACPI_BTYPE_COMPUTE_DATA);

        case 129:

            return (ACPI_BTYPE_PACKAGE);

        case 137:

            return (ACPI_BTYPE_COMPUTE_DATA | ACPI_BTYPE_FIELD_UNIT);

        case 140:

            return (ACPI_BTYPE_COMPUTE_DATA | ACPI_BTYPE_BUFFER_FIELD);

        case 139:

            return (ACPI_BTYPE_INTEGER | ACPI_BTYPE_DDB_HANDLE);

        case 138:



            return (0);

        default:

            return (1 << (Etype - 1));
        }
    }



    switch (Etype)
    {
    case 132:
    case 134:
    case 133:



        return (ACPI_BTYPE_COMPUTE_DATA | ACPI_BTYPE_FIELD_UNIT);

    case 135:

        return (ACPI_BTYPE_INTEGER);


    case 131:
    case 130:

        return (ACPI_BTYPE_REFERENCE_OBJECT);

    default:

        printf ("Unhandled encoded type: %X\n", Etype);
        return (0);
    }
}
