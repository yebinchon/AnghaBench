
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct edit_baton {int wcroot_abspath; int db; int pool; } ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int APR_SUCCESS ;
 int * apr_pool_parent_get (int ) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_wc__wq_run (int ,int ,int *,int *,int *) ;

__attribute__((used)) static apr_status_t
cleanup_edit_baton(void *edit_baton)
{
  struct edit_baton *eb = edit_baton;
  svn_error_t *err;
  apr_pool_t *pool = apr_pool_parent_get(eb->pool);

  err = svn_wc__wq_run(eb->db, eb->wcroot_abspath,
                       ((void*)0) , ((void*)0) ,
                       pool);

  if (err)
    {
      apr_status_t apr_err = err->apr_err;
      svn_error_clear(err);
      return apr_err;
    }
  return APR_SUCCESS;
}
