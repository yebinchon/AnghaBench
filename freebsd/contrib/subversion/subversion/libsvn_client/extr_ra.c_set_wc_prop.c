
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_error_t ;
struct TYPE_4__ {TYPE_1__* ctx; int base_dir_abspath; } ;
typedef TYPE_2__ callback_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int wc_ctx; } ;


 int TRUE ;
 int svn_depth_empty ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc_prop_set4 (int ,char const*,char const*,int const*,int ,int ,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
set_wc_prop(void *baton,
            const char *path,
            const char *name,
            const svn_string_t *value,
            apr_pool_t *pool)
{
  callback_baton_t *cb = baton;
  const char *local_abspath;

  local_abspath = svn_dirent_join(cb->base_dir_abspath, path, pool);
  return svn_error_trace(svn_wc_prop_set4(cb->ctx->wc_ctx, local_abspath,
                                          name,
                                          value, svn_depth_empty,
                                          TRUE ,
                                          ((void*)0) ,
                                          ((void*)0), ((void*)0) ,
                                          ((void*)0), ((void*)0) ,
                                          pool));
}
