
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_5__ {struct TYPE_5__* Next; TYPE_1__* Files; } ;
struct TYPE_4__ {int * Handle; int Filename; } ;
typedef int FILE ;
typedef TYPE_2__ ASL_GLOBAL_FILE_NODE ;


 TYPE_2__* AslGbl_FilesList ;
 int strcmp (int ,char*) ;

FILE *
FlGetFileHandle (
    UINT32 OutFileId,
    UINT32 InFileId,
    char *Filename)
{
    ASL_GLOBAL_FILE_NODE *Current = AslGbl_FilesList;


    if (!Filename)
    {
        return (((void*)0));
    }

    while (Current)
    {
        if (!strcmp (Current->Files[InFileId].Filename, Filename))
        {
            return (Current->Files[OutFileId].Handle);
        }

        Current = Current->Next;
    }

    return (((void*)0));
}
