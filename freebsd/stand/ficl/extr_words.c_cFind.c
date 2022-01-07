
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef int FICL_VM ;
typedef int FICL_STRING ;


 int * POPPTR () ;
 int SI_PFS (int ,int *) ;
 int do_find (int *,int ,int *) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void cFind(FICL_VM *pVM)
{
    FICL_STRING *sp;
    STRINGINFO si;




    sp = POPPTR();
    SI_PFS(si, sp);
    do_find(pVM, si, sp);
}
