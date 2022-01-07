
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UNS32 ;
struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_UNS ;


 int PUSHUNS (int ) ;
 scalar_t__ stackPopPtr (int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void quadFetch(FICL_VM *pVM)
{
    UNS32 *pw;



    pw = (UNS32 *)stackPopPtr(pVM->pStack);
    PUSHUNS((FICL_UNS)*pw);
    return;
}
