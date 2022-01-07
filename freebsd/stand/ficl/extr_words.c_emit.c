
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* pad; int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int stackPopINT (int ) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmTextOut (TYPE_1__*,char*,int ) ;

__attribute__((used)) static void emit(FICL_VM *pVM)
{
    char *cp = pVM->pad;
    int i;




    i = stackPopINT(pVM->pStack);
    cp[0] = (char)i;
    cp[1] = '\0';
    vmTextOut(pVM, cp, 0);
    return;
}
