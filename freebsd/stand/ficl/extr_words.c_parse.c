
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;


 scalar_t__ POPINT () ;
 int PUSHPTR (int ) ;
 int PUSHUNS (int ) ;
 int SI_COUNT (int ) ;
 int SI_PTR (int ) ;
 int vmCheckStack (int *,int,int) ;
 int vmParseStringEx (int *,char,int ) ;

__attribute__((used)) static void parse(FICL_VM *pVM)
{
    STRINGINFO si;
    char delim;





    delim = (char)POPINT();

    si = vmParseStringEx(pVM, delim, 0);
    PUSHPTR(SI_PTR(si));
    PUSHUNS(SI_COUNT(si));
    return;
}
