
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Type; int Flags; struct TYPE_5__* Path; struct TYPE_5__* InternalPath; struct TYPE_5__* Next; int Value; } ;
typedef TYPE_1__ ACPI_EXTERNAL_LIST ;


 int ACPI_EXT_CONFLICTING_DECLARATION ;
 int ACPI_EXT_EXTERNAL_EMITTED ;
 int ACPI_EXT_INTERNAL_PATH_ALLOCATED ;
 int ACPI_EXT_ORIGIN_FROM_FILE ;
 int ACPI_EXT_RESOLVED_REFERENCE ;
 int ACPI_FREE (TYPE_1__*) ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int AcpiDmConflictingDeclaration (TYPE_1__*) ;
 int AcpiDmGetObjectTypeName (scalar_t__) ;
 int AcpiDmUnresolvedWarning (int) ;
 TYPE_1__* AcpiGbl_ExternalList ;
 int AcpiGbl_NumExternalMethods ;
 int AcpiGbl_ResolvedExternalMethods ;
 int AcpiOsPrintf (char*,...) ;
 scalar_t__ AslGbl_ExternalRefFilename ;
 int ExternalConflictMessage ;

void
AcpiDmEmitExternals (
    void)
{
    ACPI_EXTERNAL_LIST *NextExternal;


    if (!AcpiGbl_ExternalList)
    {
        return;
    }





    NextExternal = AcpiGbl_ExternalList;
    while (NextExternal)
    {
        if (NextExternal->Type == ACPI_TYPE_METHOD)
        {
            AcpiGbl_NumExternalMethods++;
            if (NextExternal->Flags & ACPI_EXT_RESOLVED_REFERENCE)
            {
                AcpiGbl_ResolvedExternalMethods++;
            }
        }

        NextExternal = NextExternal->Next;
    }



    AcpiDmUnresolvedWarning (1);

    if (AslGbl_ExternalRefFilename)
    {
        AcpiOsPrintf (
            "    /*\n     * External declarations were imported from\n"
            "     * a reference file -- %s\n     */\n\n",
            AslGbl_ExternalRefFilename);
    }




    while (AcpiGbl_ExternalList)
    {
        if (!(AcpiGbl_ExternalList->Flags & ACPI_EXT_EXTERNAL_EMITTED))
        {
            AcpiOsPrintf ("    External (%s%s)",
                AcpiGbl_ExternalList->Path,
                AcpiDmGetObjectTypeName (AcpiGbl_ExternalList->Type));



            if ((AcpiGbl_ExternalList->Type == ACPI_TYPE_METHOD) &&
                (!(AcpiGbl_ExternalList->Flags & ACPI_EXT_RESOLVED_REFERENCE)))
            {
                AcpiOsPrintf ("    // Warning: Unknown method, "
                    "guessing %u arguments",
                    AcpiGbl_ExternalList->Value);
            }



            else if (AcpiGbl_ExternalList->Flags & ACPI_EXT_ORIGIN_FROM_FILE)
            {
                if (AcpiGbl_ExternalList->Type == ACPI_TYPE_METHOD)
                {
                    AcpiOsPrintf ("    // %u Arguments",
                        AcpiGbl_ExternalList->Value);
                }

                AcpiOsPrintf ("    // From external reference file");
            }



            else
            {


                if (AcpiGbl_ExternalList->Type == ACPI_TYPE_METHOD)
                {
                    AcpiOsPrintf ("    // %u Arguments",
                        AcpiGbl_ExternalList->Value);
                }
            }

            if (AcpiGbl_ExternalList->Flags &= ACPI_EXT_CONFLICTING_DECLARATION)
            {
                AcpiOsPrintf ("%s", ExternalConflictMessage);
                AcpiDmConflictingDeclaration (AcpiGbl_ExternalList->Path);
            }
            AcpiOsPrintf ("\n");
        }



        NextExternal = AcpiGbl_ExternalList->Next;
        if (AcpiGbl_ExternalList->Flags & ACPI_EXT_INTERNAL_PATH_ALLOCATED)
        {
            ACPI_FREE (AcpiGbl_ExternalList->InternalPath);
        }

        ACPI_FREE (AcpiGbl_ExternalList->Path);
        ACPI_FREE (AcpiGbl_ExternalList);
        AcpiGbl_ExternalList = NextExternal;
    }

    AcpiOsPrintf ("\n");
}
