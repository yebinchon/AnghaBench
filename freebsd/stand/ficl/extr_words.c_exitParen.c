
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int vmPopIP (int *) ;

__attribute__((used)) static void exitParen(FICL_VM *pVM)
{
    vmPopIP(pVM);
    return;
}
