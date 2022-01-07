
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int report_baton; } ;
typedef TYPE_1__ report_driver_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_error_clear (int ) ;
 int svn_repos_abort_report (int ,int *) ;

__attribute__((used)) static svn_error_t *
abort_report(svn_ra_svn_conn_t *conn,
             apr_pool_t *pool,
             svn_ra_svn__list_t *params,
             void *baton)
{
  report_driver_baton_t *b = baton;


  svn_error_clear(svn_repos_abort_report(b->report_baton, pool));
  return SVN_NO_ERROR;
}
