
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;


 int xstate_sz ;

__attribute__((used)) static int
__getcontextx_size_xfpu(void)
{

 return (sizeof(ucontext_t) + xstate_sz);
}
