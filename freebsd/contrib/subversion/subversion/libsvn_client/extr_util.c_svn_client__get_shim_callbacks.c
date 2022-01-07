
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_wc_context_t ;
struct TYPE_4__ {struct shim_callbacks_baton* fetch_baton; int fetch_base_func; int fetch_kind_func; int fetch_props_func; } ;
typedef TYPE_1__ svn_delta_shim_callbacks_t ;
struct shim_callbacks_baton {int * relpath_map; int * wc_ctx; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * apr_hash_make (int *) ;
 struct shim_callbacks_baton* apr_pcalloc (int *,int) ;
 int fetch_base_func ;
 int fetch_kind_func ;
 int fetch_props_func ;
 TYPE_1__* svn_delta_shim_callbacks_default (int *) ;

svn_delta_shim_callbacks_t *
svn_client__get_shim_callbacks(svn_wc_context_t *wc_ctx,
                               apr_hash_t *relpath_map,
                               apr_pool_t *result_pool)
{
  svn_delta_shim_callbacks_t *callbacks =
                            svn_delta_shim_callbacks_default(result_pool);
  struct shim_callbacks_baton *scb = apr_pcalloc(result_pool, sizeof(*scb));

  scb->wc_ctx = wc_ctx;
  if (relpath_map)
    scb->relpath_map = relpath_map;
  else
    scb->relpath_map = apr_hash_make(result_pool);

  callbacks->fetch_props_func = fetch_props_func;
  callbacks->fetch_kind_func = fetch_kind_func;
  callbacks->fetch_base_func = fetch_base_func;
  callbacks->fetch_baton = scb;

  return callbacks;
}
