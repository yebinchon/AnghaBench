
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pad; int pSys; } ;
typedef TYPE_1__ FICL_VM ;


 unsigned int POPUNS () ;
 int ficlSetEnvD (int ,int ,unsigned int,unsigned int) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;
 int vmGetWordToPad (TYPE_1__*) ;

__attribute__((used)) static void env2Constant(FICL_VM *pVM)
{
    unsigned v1, v2;





    vmGetWordToPad(pVM);
    v2 = POPUNS();
    v1 = POPUNS();
    ficlSetEnvD(pVM->pSys, pVM->pad, v1, v2);
    return;
}
