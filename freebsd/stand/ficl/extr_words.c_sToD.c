
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef scalar_t__ FICL_INT ;


 scalar_t__ POPINT () ;
 int PUSHINT (int) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void sToD(FICL_VM *pVM)
{
    FICL_INT s;




    s = POPINT();


    PUSHINT(s);
    PUSHINT((s < 0) ? -1 : 0);
    return;
}
