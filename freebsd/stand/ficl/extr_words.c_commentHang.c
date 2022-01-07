
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int vmParseStringEx (int *,char,int ) ;

__attribute__((used)) static void commentHang(FICL_VM *pVM)
{
    vmParseStringEx(pVM, ')', 0);
    return;
}
