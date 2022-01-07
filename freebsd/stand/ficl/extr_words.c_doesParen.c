
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* smudge; } ;
struct TYPE_9__ {int ip; } ;
struct TYPE_8__ {int * param; int code; } ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ FICL_DICT ;


 int LVALUEtoCELL (int ) ;
 int doDoes ;
 TYPE_3__* vmGetDict (TYPE_2__*) ;
 int vmPopIP (TYPE_2__*) ;

__attribute__((used)) static void doesParen(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    dp->smudge->code = doDoes;
    dp->smudge->param[0] = LVALUEtoCELL(pVM->ip);
    vmPopIP(pVM);
    return;
}
