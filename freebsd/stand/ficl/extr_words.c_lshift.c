
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;
typedef int FICL_UNS ;


 int POPUNS () ;
 int PUSHUNS (int) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void lshift(FICL_VM *pVM)
{
    FICL_UNS nBits;
    FICL_UNS x1;




    nBits = POPUNS();
    x1 = POPUNS();
    PUSHUNS(x1 << nBits);
    return;
}
