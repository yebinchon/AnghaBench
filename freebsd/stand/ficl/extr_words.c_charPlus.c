
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 char* POPPTR () ;
 int PUSHPTR (char*) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void charPlus(FICL_VM *pVM)
{
    char *cp;




    cp = POPPTR();
    PUSHPTR(cp + 1);
    return;
}
