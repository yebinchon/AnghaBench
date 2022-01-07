
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int index; } ;
struct TYPE_6__ {TYPE_1__ tib; } ;
typedef TYPE_2__ FICL_VM ;


 int PUSHPTR (int *) ;
 int vmCheckStack (TYPE_2__*,int ,int) ;

__attribute__((used)) static void toIn(FICL_VM *pVM)
{



    PUSHPTR(&pVM->tib.index);
    return;
}
