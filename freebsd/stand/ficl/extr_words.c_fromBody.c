
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_WORD ;
typedef int FICL_VM ;


 scalar_t__ POPPTR () ;
 int PUSHPTR (char*) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void fromBody(FICL_VM *pVM)
{
    char *ptr;




    ptr = (char *)POPPTR() - sizeof (FICL_WORD);
    PUSHPTR(ptr);
    return;
}
