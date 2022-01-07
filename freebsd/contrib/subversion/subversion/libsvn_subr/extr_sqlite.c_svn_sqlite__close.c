
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state_pool; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;


 scalar_t__ APR_SUCCESS ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_pool_cleanup_run (int ,TYPE_1__*,int ) ;
 int close_apr ;
 int * svn_error_wrap_apr (scalar_t__,int *) ;

svn_error_t *
svn_sqlite__close(svn_sqlite__db_t *db)
{
  apr_status_t result = apr_pool_cleanup_run(db->state_pool, db, close_apr);

  if (result == APR_SUCCESS)
    return SVN_NO_ERROR;

  return svn_error_wrap_apr(result, ((void*)0));
}
