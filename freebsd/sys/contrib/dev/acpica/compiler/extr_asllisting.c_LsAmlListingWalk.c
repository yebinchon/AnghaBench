
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_5__ {int CompileFlags; scalar_t__ FinalAmlLength; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TO_INTEGER (void*) ;
 int AE_OK ;
 int ASL_FILE_AML_OUTPUT ;
 scalar_t__ ASL_FILE_ASM_INCLUDE_OUTPUT ;
 scalar_t__ ASL_FILE_C_INCLUDE_OUTPUT ;
 int ASL_MSG_READ ;
 int AslAbort () ;
 int FlFileError (int ,int ) ;
 int FlReadFile (int ,int *,int) ;
 int LsWriteListingHexBytes (int *,int,scalar_t__) ;
 int LsWriteNodeToListing (TYPE_2__*,scalar_t__) ;
 int OP_IS_RESOURCE_DATA ;

__attribute__((used)) static ACPI_STATUS
LsAmlListingWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    UINT8 FileByte;
    UINT32 i;
    UINT32 FileId = (UINT32) ACPI_TO_INTEGER (Context);


    LsWriteNodeToListing (Op, FileId);

    if (Op->Asl.CompileFlags & OP_IS_RESOURCE_DATA)
    {


        return (AE_OK);
    }

    if ((FileId == ASL_FILE_ASM_INCLUDE_OUTPUT) ||
        (FileId == ASL_FILE_C_INCLUDE_OUTPUT))
    {
        return (AE_OK);
    }



    for (i = 0; i < Op->Asl.FinalAmlLength; i++)
    {
        if (ACPI_FAILURE (FlReadFile (ASL_FILE_AML_OUTPUT, &FileByte, 1)))
        {
            FlFileError (ASL_FILE_AML_OUTPUT, ASL_MSG_READ);
            AslAbort ();
        }

        LsWriteListingHexBytes (&FileByte, 1, FileId);
    }

    return (AE_OK);
}
