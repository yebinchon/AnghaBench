
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int vmTextOut (int *,char*,int ) ;

__attribute__((used)) static void debugPrompt(FICL_VM *pVM)
{
        vmTextOut(pVM, "dbg> ", 0);
}
