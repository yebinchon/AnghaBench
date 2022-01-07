
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fns_wrapper_baton {int old_baton; TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* token_discard_all ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void
token_discard_all(void *baton)
{
  struct fns_wrapper_baton *fwb = baton;
  fwb->vtable->token_discard_all(fwb->old_baton);
}
