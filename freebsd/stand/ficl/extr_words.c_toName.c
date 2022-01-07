
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nName; int name; } ;
typedef TYPE_1__ FICL_WORD ;
typedef int FICL_VM ;


 TYPE_1__* POPPTR () ;
 int PUSHPTR (int ) ;
 int PUSHUNS (int ) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void toName(FICL_VM *pVM)
{
    FICL_WORD *pFW;




    pFW = POPPTR();
    PUSHPTR(pFW->name);
    PUSHUNS(pFW->nName);
    return;
}
