
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ACPI_TYPE_NOT_FOUND ;
 int AcpiDbEvaluateAllPredefinedNames (int *) ;
 int AcpiDbMatchArgument (char*,int ) ;
 int AcpiDbTestAllObjects () ;
 int AcpiDbTestTypes ;
 int AcpiOsPrintf (char*) ;
 int AcpiUtStrupr (char*) ;



void
AcpiDbExecuteTest (
    char *TypeArg)
{
    UINT32 Temp;


    AcpiUtStrupr (TypeArg);
    Temp = AcpiDbMatchArgument (TypeArg, AcpiDbTestTypes);
    if (Temp == ACPI_TYPE_NOT_FOUND)
    {
        AcpiOsPrintf ("Invalid or unsupported argument\n");
        return;
    }

    switch (Temp)
    {
    case 129:

        AcpiDbTestAllObjects ();
        break;

    case 128:

        AcpiDbEvaluateAllPredefinedNames (((void*)0));
        break;

    default:
        break;
    }
}
