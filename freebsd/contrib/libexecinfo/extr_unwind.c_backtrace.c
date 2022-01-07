
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_context {void** arr; size_t len; size_t n; } ;


 int _Unwind_Backtrace (int ,struct tracer_context*) ;
 int tracer ;

size_t
backtrace(void **arr, size_t len)
{
 struct tracer_context ctx;

 ctx.arr = arr;
 ctx.len = len;
 ctx.n = (size_t)~0;

 _Unwind_Backtrace(tracer, &ctx);
 if (ctx.n != (size_t)~0 && ctx.n > 0)
  ctx.arr[--ctx.n] = ((void*)0);

 return ctx.n;
}
