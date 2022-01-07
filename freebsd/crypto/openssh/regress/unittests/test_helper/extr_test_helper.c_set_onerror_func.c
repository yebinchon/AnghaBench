
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_onerror_func_t ;


 void* onerror_ctx ;
 int * test_onerror ;

void
set_onerror_func(test_onerror_func_t *f, void *ctx)
{
 test_onerror = f;
 onerror_ctx = ctx;
}
