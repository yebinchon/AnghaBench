
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int repos; } ;
typedef TYPE_1__ report_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int finish_report (TYPE_1__*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs_refresh_revision_props (int ,int *) ;
 int svn_repos_fs (int ) ;

svn_error_t *
svn_repos_finish_report(void *baton, apr_pool_t *pool)
{
  report_baton_t *b = baton;

  SVN_ERR(svn_fs_refresh_revision_props(svn_repos_fs(b->repos), pool));
  return svn_error_trace(finish_report(b, pool));
}
