
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int ficlExecFD (TYPE_1__*,int) ;
 int stackPopINT (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

__attribute__((used)) static void pfload(FICL_VM *pVM)
{
    int fd;




    fd = stackPopINT(pVM->pStack);
    if (fd != -1)
 ficlExecFD(pVM, fd);
    return;
}
