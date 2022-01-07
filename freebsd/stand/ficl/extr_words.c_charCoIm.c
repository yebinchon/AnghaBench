
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int ficlChar (int *) ;
 int literalIm (int *) ;

__attribute__((used)) static void charCoIm(FICL_VM *pVM)
{
    ficlChar(pVM);
    literalIm(pVM);
    return;
}
