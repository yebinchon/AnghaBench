
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct revision_baton* fetch_baton; int fetch_base_func; int fetch_kind_func; int fetch_props_func; } ;
typedef TYPE_1__ svn_delta_shim_callbacks_t ;
struct revision_baton {int dummy; } ;
typedef int apr_pool_t ;


 int fetch_base_func ;
 int fetch_kind_func ;
 int fetch_props_func ;
 TYPE_1__* svn_delta_shim_callbacks_default (int *) ;

__attribute__((used)) static svn_delta_shim_callbacks_t *
get_shim_callbacks(struct revision_baton *rb,
                   apr_pool_t *pool)
{
  svn_delta_shim_callbacks_t *callbacks =
                        svn_delta_shim_callbacks_default(pool);

  callbacks->fetch_props_func = fetch_props_func;
  callbacks->fetch_kind_func = fetch_kind_func;
  callbacks->fetch_base_func = fetch_base_func;
  callbacks->fetch_baton = rb;

  return callbacks;
}
