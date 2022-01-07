
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct fns_wrapper_baton {int old_baton; TYPE_1__* vtable; } ;
struct TYPE_2__ {int * (* token_compare ) (int ,void*,void*,int*) ;} ;


 int * stub1 (int ,void*,void*,int*) ;

__attribute__((used)) static svn_error_t *
token_compare(void *baton,
              void *ltoken,
              void *rtoken,
              int *compare)
{
  struct fns_wrapper_baton *fwb = baton;
  return fwb->vtable->token_compare(fwb->old_baton, ltoken, rtoken, compare);
}
