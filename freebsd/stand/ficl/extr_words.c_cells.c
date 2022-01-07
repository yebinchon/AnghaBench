
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_INT ;
typedef int CELL ;


 int POPINT () ;
 int PUSHINT (int) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void cells(FICL_VM *pVM)
{
    FICL_INT i;




    i = POPINT();
    PUSHINT(i * (FICL_INT)sizeof (CELL));
    return;
}
