
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dp; } ;
typedef TYPE_1__ FICL_SYSTEM ;
typedef int FICL_DICT ;


 int FICL_TRUE ;
 int FW_DEFAULT ;
 int assert (int *) ;
 int dictAppendWord (int *,char*,int ,int ) ;
 int ficlCloseFile ;
 int ficlCreateFile ;
 int ficlDeleteFile ;
 int ficlFilePosition ;
 int ficlFileSize ;
 int ficlFileStatus ;
 int ficlFlushFile ;
 int ficlIncludeFile ;
 int ficlOpenFile ;
 int ficlReadFile ;
 int ficlReadLine ;
 int ficlRenameFile ;
 int ficlRepositionFile ;
 int ficlResizeFile ;
 int ficlSetEnv (TYPE_1__*,char*,int ) ;
 int ficlWriteFile ;
 int ficlWriteLine ;

void ficlCompileFile(FICL_SYSTEM *pSys)
{
    (void)pSys;

}
