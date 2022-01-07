
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int ficlExecC (int *,char*,int) ;

int ficlExec(FICL_VM *pVM, char *pText)
{
    return ficlExecC(pVM, pText, -1);
}
