
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* vm_offset_t ;
struct TYPE_6__ {int (* arch_copyin ) (void*,void*,size_t) ;} ;
struct TYPE_5__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 TYPE_4__ archsw ;
 void* stackPopINT (int ) ;
 void* stackPopPtr (int ) ;
 int stub1 (void*,void*,size_t) ;
 int vmCheckStack (TYPE_1__*,int,int ) ;

void
ficlCopyin(FICL_VM *pVM)
{
 void* src;
 vm_offset_t dest;
 size_t len;





 len = stackPopINT(pVM->pStack);
 dest = stackPopINT(pVM->pStack);
 src = stackPopPtr(pVM->pStack);


 archsw.arch_copyin(src, dest, len);


 return;
}
