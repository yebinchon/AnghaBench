
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Filename; } ;
typedef int ASL_GLOBAL_FILE_NODE ;


 size_t ASL_FILE_INPUT ;
 TYPE_1__* AslGbl_Files ;
 int * FlGetFileNode (size_t,int ) ;

ASL_GLOBAL_FILE_NODE *
FlGetCurrentFileNode (
    void)
{
    return (FlGetFileNode (
        ASL_FILE_INPUT,AslGbl_Files[ASL_FILE_INPUT].Filename));
}
