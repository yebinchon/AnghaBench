
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_2__ {int Filename; } ;


 scalar_t__ ACPI_TO_POINTER (scalar_t__) ;
 int ASL_FILE_AML_OUTPUT ;
 scalar_t__ ASL_FILE_C_OFFSET_OUTPUT ;
 size_t ASL_FILE_INPUT ;
 int ASL_FILE_SOURCE_OUTPUT ;
 scalar_t__ ASL_WALK_VISIT_DB_SEPARATELY ;
 scalar_t__ ASL_WALK_VISIT_DOWNWARD ;
 scalar_t__ AslGbl_CurrentAmlOffset ;
 int AslGbl_CurrentDB ;
 scalar_t__ AslGbl_CurrentHexColumn ;
 TYPE_1__* AslGbl_Files ;
 scalar_t__ AslGbl_SourceLine ;
 int FlSeekFile (int ,int ) ;
 int LsAmlListingWalk ;
 int LsAmlOffsetWalk ;
 int LsDoOffsetTableFooter (scalar_t__) ;
 int LsDoOffsetTableHeader (scalar_t__) ;
 int LsFinishSourceListing (scalar_t__) ;
 int LsPushNode (int ) ;
 int TrWalkParseTree (int ,scalar_t__,int ,int *,void*) ;

__attribute__((used)) static void
LsGenerateListing (
    UINT32 FileId)
{
    UINT32 WalkMode = ASL_WALK_VISIT_DOWNWARD | ASL_WALK_VISIT_DB_SEPARATELY;



    FlSeekFile (ASL_FILE_SOURCE_OUTPUT, 0);
    FlSeekFile (ASL_FILE_AML_OUTPUT, 0);
    AslGbl_SourceLine = 0;
    AslGbl_CurrentHexColumn = 0;
    LsPushNode (AslGbl_Files[ASL_FILE_INPUT].Filename);

    if (FileId == ASL_FILE_C_OFFSET_OUTPUT)
    {
        AslGbl_CurrentAmlOffset = 0;



        LsDoOffsetTableHeader (FileId);

        TrWalkParseTree (AslGbl_CurrentDB, WalkMode,
            LsAmlOffsetWalk, ((void*)0), (void *) ACPI_TO_POINTER (FileId));
        LsDoOffsetTableFooter (FileId);
        return;
    }



    TrWalkParseTree (AslGbl_CurrentDB, WalkMode,
        LsAmlListingWalk, ((void*)0), (void *) ACPI_TO_POINTER (FileId));



    LsFinishSourceListing (FileId);
}
