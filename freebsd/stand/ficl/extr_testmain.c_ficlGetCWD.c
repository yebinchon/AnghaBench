
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int free (char*) ;
 char* getcwd (int *,int) ;
 int vmTextOut (int *,char*,int) ;

__attribute__((used)) static void ficlGetCWD(FICL_VM *pVM)
{
    char *cp;

    cp = getcwd(((void*)0), 80);
    vmTextOut(pVM, cp, 1);
    free(cp);
    return;
}
