
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* cp; } ;
typedef TYPE_1__ STRINGINFO ;
typedef int FICL_VM ;
typedef int FICL_UNS ;


 int PUSHUNS (int ) ;
 int vmCheckStack (int *,int ,int) ;
 TYPE_1__ vmGetWord (int *) ;

__attribute__((used)) static void ficlChar(FICL_VM *pVM)
{
    STRINGINFO si;




    si = vmGetWord(pVM);
    PUSHUNS((FICL_UNS)(si.cp[0]));
    return;
}
