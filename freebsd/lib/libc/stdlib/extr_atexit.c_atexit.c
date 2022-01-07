
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* std_func ) () ;} ;
struct atexit_fn {int * fn_dso; int * fn_arg; TYPE_1__ fn_ptr; int fn_type; } ;


 int ATEXIT_FN_STD ;
 int atexit_register (struct atexit_fn*) ;

int
atexit(void (*func)(void))
{
 struct atexit_fn fn;
 int error;

 fn.fn_type = ATEXIT_FN_STD;
 fn.fn_ptr.std_func = func;
 fn.fn_arg = ((void*)0);
 fn.fn_dso = ((void*)0);

 error = atexit_register(&fn);
 return (error);
}
