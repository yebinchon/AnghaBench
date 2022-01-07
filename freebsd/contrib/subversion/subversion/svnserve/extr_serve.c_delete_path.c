
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_2__ {int report_baton; scalar_t__ err; } ;
typedef TYPE_1__ report_driver_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 scalar_t__ svn_repos_delete_path (int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *delete_path(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                                svn_ra_svn__list_t *params, void *baton)
{
  report_driver_baton_t *b = baton;
  const char *path;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "c", &path));
  path = svn_relpath_canonicalize(path, pool);
  if (!b->err)
    b->err = svn_repos_delete_path(b->report_baton, path, pool);
  return SVN_NO_ERROR;
}
