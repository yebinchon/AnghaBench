
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {struct TYPE_5__* Next; TYPE_1__* Files; } ;
struct TYPE_4__ {int Filename; } ;
typedef TYPE_2__ ASL_GLOBAL_FILE_NODE ;


 size_t ASL_FILE_INPUT ;
 TYPE_2__* AslGbl_FilesList ;
 int FALSE ;

 int FlSwitchFileSet (int ) ;


 int UtDisplayErrorSummary (int ) ;
 int UtDisplayOneSummary (int ,int ) ;

void
UtDisplaySummary (
    UINT32 FileId)
{
    ASL_GLOBAL_FILE_NODE *Current = AslGbl_FilesList;


    while (Current)
    {
        switch (FlSwitchFileSet(Current->Files[ASL_FILE_INPUT].Filename))
        {
            case 128:
            case 129:

                UtDisplayOneSummary (FileId, FALSE);
                Current = Current->Next;
                break;

            case 130:
            default:

                Current = ((void*)0);
                break;
        }
    }
    UtDisplayErrorSummary (FileId);
}
