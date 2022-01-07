
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* cxa_func ) (void*) ;} ;
struct atexit_fn {void* fn_dso; void* fn_arg; TYPE_1__ fn_ptr; int fn_type; } ;


 int ATEXIT_FN_CXA ;
 int atexit_register (struct atexit_fn*) ;

int
__cxa_atexit(void (*func)(void *), void *arg, void *dso)
{
 struct atexit_fn fn;
 int error;

 fn.fn_type = ATEXIT_FN_CXA;
 fn.fn_ptr.cxa_func = func;
 fn.fn_arg = arg;
 fn.fn_dso = dso;

 error = atexit_register(&fn);
 return (error);
}
