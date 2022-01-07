
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cp; } ;
struct TYPE_7__ {TYPE_1__ tib; } ;
typedef TYPE_2__ FICL_VM ;


 int PUSHINT (int ) ;
 int PUSHPTR (int ) ;
 int vmCheckStack (TYPE_2__*,int ,int) ;
 int vmGetInBufLen (TYPE_2__*) ;

__attribute__((used)) static void source(FICL_VM *pVM)
{



    PUSHPTR(pVM->tib.cp);
    PUSHINT(vmGetInBufLen(pVM));
    return;
}
