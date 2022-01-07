
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* Filename; } ;
struct TYPE_4__ {struct TYPE_4__* Next; int TableId; int TableSignature; TYPE_3__* Files; } ;
typedef TYPE_1__ ASL_GLOBAL_FILE_NODE ;
typedef int ASL_FILE_SWITCH_STATUS ;


 size_t ASL_FILE_INPUT ;
 TYPE_3__* AslGbl_Files ;
 TYPE_1__* AslGbl_FilesList ;
 int AslGbl_TableId ;
 int AslGbl_TableSignature ;
 int FILE_NOT_FOUND ;
 int SWITCH_TO_DIFFERENT_FILE ;
 int SWITCH_TO_SAME_FILE ;
 int strcmp (char*,char*) ;

ASL_FILE_SWITCH_STATUS
FlSwitchFileSet (
    char *InputFilename)
{
    ASL_GLOBAL_FILE_NODE *Current = AslGbl_FilesList;
    char *PrevFilename = Current->Files[ASL_FILE_INPUT].Filename;


    while (Current)
    {
        if (!strcmp(Current->Files[ASL_FILE_INPUT].Filename, InputFilename))
        {
            AslGbl_Files = Current->Files;
            AslGbl_TableSignature = Current->TableSignature;
            AslGbl_TableId = Current->TableId;

            if (!strcmp (InputFilename, PrevFilename))
            {
                return (SWITCH_TO_SAME_FILE);
            }
            else
            {
                return (SWITCH_TO_DIFFERENT_FILE);
            }
        }

        Current = Current->Next;
    }

    return (FILE_NOT_FOUND);
}
