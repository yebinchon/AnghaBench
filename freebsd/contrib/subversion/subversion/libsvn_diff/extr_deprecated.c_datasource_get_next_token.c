
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_datasource_e ;
struct fns_wrapper_baton {int old_baton; TYPE_1__* vtable; } ;
typedef int apr_uint32_t ;
struct TYPE_2__ {int * (* datasource_get_next_token ) (int *,void**,int ,int ) ;} ;


 int * stub1 (int *,void**,int ,int ) ;

__attribute__((used)) static svn_error_t *
datasource_get_next_token(apr_uint32_t *hash,
                          void **token,
                          void *baton,
                          svn_diff_datasource_e datasource)
{
  struct fns_wrapper_baton *fwb = baton;
  return fwb->vtable->datasource_get_next_token(hash, token, fwb->old_baton,
                                                datasource);
}
