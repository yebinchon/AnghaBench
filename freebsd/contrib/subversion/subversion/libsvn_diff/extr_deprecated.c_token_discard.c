
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fns_wrapper_baton {int old_baton; TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* token_discard ) (int ,void*) ;} ;


 int stub1 (int ,void*) ;

__attribute__((used)) static void
token_discard(void *baton,
              void *token)
{
  struct fns_wrapper_baton *fwb = baton;
  fwb->vtable->token_discard(fwb->old_baton, token);
}
