
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int stackPopINT (int ) ;
 char* stackPopPtr (int ) ;
 int stackPushINT (int ,int) ;
 int vmCheckStack (TYPE_1__*,int,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void pfwrite(FICL_VM *pVM)
{
    int fd, len;
    char *buf;




    len = stackPopINT(pVM->pStack);
    buf = stackPopPtr(pVM->pStack);
    fd = stackPopINT(pVM->pStack);
    if (len > 0 && buf && fd != -1)
 stackPushINT(pVM->pStack, write(fd, buf, len));
    else
 stackPushINT(pVM->pStack, -1);
    return;
}
