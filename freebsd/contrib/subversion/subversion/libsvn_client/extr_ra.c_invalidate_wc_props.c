
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {TYPE_1__* ctx; int base_dir_abspath; } ;
typedef TYPE_2__ callback_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int wc_ctx; } ;


 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__node_clear_dav_cache_recursive (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
invalidate_wc_props(void *baton,
                    const char *path,
                    const char *prop_name,
                    apr_pool_t *pool)
{
  callback_baton_t *cb = baton;
  const char *local_abspath;

  local_abspath = svn_dirent_join(cb->base_dir_abspath, path, pool);
  return svn_error_trace(svn_wc__node_clear_dav_cache_recursive(
                              cb->ctx->wc_ctx, local_abspath, pool));
}
