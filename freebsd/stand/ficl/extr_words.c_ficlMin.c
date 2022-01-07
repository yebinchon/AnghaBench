
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef scalar_t__ FICL_INT ;


 scalar_t__ POPINT () ;
 int PUSHINT (scalar_t__) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void ficlMin(FICL_VM *pVM)
{
    FICL_INT n2;
    FICL_INT n1;




    n2 = POPINT();
    n1 = POPINT();

    PUSHINT((n1 < n2) ? n1 : n2);
    return;
}
