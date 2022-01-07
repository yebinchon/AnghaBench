
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int read (int,char*,int) ;
 int stackPopINT (int ) ;
 int stackPushINT (int ,char) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void fkey(FICL_VM *pVM)
{
    int i, fd;
    char ch;




    fd = stackPopINT(pVM->pStack);
    i = read(fd, &ch, 1);
    stackPushINT(pVM->pStack, i > 0 ? ch : -1);
    return;
}
