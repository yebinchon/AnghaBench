
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ callback_baton_t ;
struct TYPE_3__ {int cancel_baton; int (* cancel_func ) (int ) ;} ;


 int stub1 (int ) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
cancel_callback(void *baton)
{
  callback_baton_t *b = baton;
  return svn_error_trace((b->ctx->cancel_func)(b->ctx->cancel_baton));
}
