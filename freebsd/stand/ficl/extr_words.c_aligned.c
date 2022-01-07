
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 void* POPPTR () ;
 int PUSHPTR (int ) ;
 int alignPtr (void*) ;
 int vmCheckStack (int *,int,int) ;

__attribute__((used)) static void aligned(FICL_VM *pVM)
{
    void *addr;




    addr = POPPTR();
    PUSHPTR(alignPtr(addr));
    return;
}
