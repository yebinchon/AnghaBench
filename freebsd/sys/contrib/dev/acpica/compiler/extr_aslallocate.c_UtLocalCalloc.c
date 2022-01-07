
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_2__ {int Filename; } ;


 void* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ASL_ERROR ;
 size_t ASL_FILE_INPUT ;
 int ASL_MSG_MEMORY_ALLOCATION ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int ,int *) ;
 int AslGbl_CurrentColumn ;
 int AslGbl_CurrentLineNumber ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_InputByteCount ;
 int AslGbl_LogicalLineNumber ;
 int AslGbl_TotalAllocated ;
 int AslGbl_TotalAllocations ;
 int CmCleanupAndExit () ;
 int exit (int) ;

void *
UtLocalCalloc (
    UINT32 Size)
{
    void *Allocated;


    Allocated = ACPI_ALLOCATE_ZEROED (Size);
    if (!Allocated)
    {
        AslCommonError (ASL_ERROR, ASL_MSG_MEMORY_ALLOCATION,
            AslGbl_CurrentLineNumber, AslGbl_LogicalLineNumber,
            AslGbl_InputByteCount, AslGbl_CurrentColumn,
            AslGbl_Files[ASL_FILE_INPUT].Filename, ((void*)0));

        CmCleanupAndExit ();
        exit (1);
    }

    AslGbl_TotalAllocations++;
    AslGbl_TotalAllocated += Size;
    return (Allocated);
}
