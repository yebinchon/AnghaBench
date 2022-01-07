
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* (* arch_hypervisor ) () ;} ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_INT ;


 int FICL_FALSE ;
 int FICL_TRUE ;
 TYPE_4__ archsw ;
 int stackPushINT (int ,int ) ;
 char* stub1 () ;
 int vmCheckStack (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
ficlIsvirtualizedQ(FICL_VM *pVM)
{
 FICL_INT flag;
 const char *hv;





 hv = (archsw.arch_hypervisor != ((void*)0))
     ? (*archsw.arch_hypervisor)()
     : ((void*)0);
 flag = (hv != ((void*)0)) ? FICL_TRUE : FICL_FALSE;
 stackPushINT(pVM->pStack, flag);
}
