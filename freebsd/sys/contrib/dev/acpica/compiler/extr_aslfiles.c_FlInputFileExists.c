
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Next; TYPE_1__* Files; } ;
struct TYPE_4__ {int Filename; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ASL_GLOBAL_FILE_NODE ;


 size_t ASL_FILE_INPUT ;
 TYPE_2__* AslGbl_FilesList ;
 int FALSE ;
 int TRUE ;
 int strcmp (char*,int ) ;

__attribute__((used)) static BOOLEAN
FlInputFileExists (
    char *Filename)
{
    ASL_GLOBAL_FILE_NODE *Current = AslGbl_FilesList;


    while (Current)
    {
        if (!strcmp (Filename, Current->Files[ASL_FILE_INPUT].Filename))
        {
            return (TRUE);
        }

        Current = Current->Next;
    }

    return (FALSE);
}
