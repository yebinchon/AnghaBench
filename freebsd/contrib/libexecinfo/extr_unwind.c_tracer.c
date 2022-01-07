
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_context {size_t n; size_t len; void** arr; } ;
struct _Unwind_Context {int dummy; } ;
typedef int _Unwind_Reason_Code ;


 int _URC_END_OF_STACK ;
 int _URC_NO_REASON ;
 scalar_t__ _Unwind_GetIP (struct _Unwind_Context*) ;

__attribute__((used)) static _Unwind_Reason_Code
tracer(struct _Unwind_Context *ctx, void *arg)
{
 struct tracer_context *t = arg;
 if (t->n == (size_t)~0) {

  t->n = 0;
  return 0;
 }
 if (t->n < t->len)
  t->arr[t->n++] = (void *)_Unwind_GetIP(ctx);
 else
  return _URC_END_OF_STACK;
 return _URC_NO_REASON;
}
