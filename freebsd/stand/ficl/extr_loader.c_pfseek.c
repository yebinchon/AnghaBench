
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int lseek (int,int,int) ;
 int stackPopINT (int ) ;
 int stackPushINT (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void pfseek(FICL_VM *pVM)
{
    int fd, pos, whence;




    whence = stackPopINT(pVM->pStack);
    pos = stackPopINT(pVM->pStack);
    fd = stackPopINT(pVM->pStack);
    stackPushINT(pVM->pStack, lseek(fd, pos, whence));
    return;
}
