
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int log_handler_fn ;


 int * log_handler ;
 void* log_handler_ctx ;

void
set_log_handler(log_handler_fn *handler, void *ctx)
{
 log_handler = handler;
 log_handler_ctx = ctx;
}
