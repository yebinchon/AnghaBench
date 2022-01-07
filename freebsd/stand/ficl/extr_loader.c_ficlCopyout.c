
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* vm_offset_t ;
struct TYPE_6__ {int (* arch_copyout ) (void*,void*,size_t) ;} ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 TYPE_4__ archsw ;
 void* stackPopINT (int ) ;
 void* stackPopPtr (int ) ;
 int stub1 (void*,void*,size_t) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

void
ficlCopyout(FICL_VM *pVM)
{
 void* dest;
 vm_offset_t src;
 size_t len;





 len = stackPopINT(pVM->pStack);
 dest = stackPopPtr(pVM->pStack);
 src = stackPopINT(pVM->pStack);


 archsw.arch_copyout(src, dest, len);


 return;
}
