
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct TYPE_2__ {char const* repos_url; int entry_counter; int report_baton; scalar_t__ err; } ;
typedef TYPE_1__ report_driver_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ get_fs_path (int ,int ,char const**) ;
 int svn_depth_from_word (char const*) ;
 int svn_depth_infinity ;
 int svn_path_uri_decode (char const*,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,char const**,int *,int *,char const**,char const**) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 scalar_t__ svn_repos_link_path3 (int ,char const*,char const*,int ,int ,int ,char const*,int *) ;
 char* svn_uri_canonicalize (char const*,int *) ;

__attribute__((used)) static svn_error_t *link_path(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                              svn_ra_svn__list_t *params, void *baton)
{
  report_driver_baton_t *b = baton;
  const char *path, *url, *lock_token, *fs_path, *depth_word;
  svn_revnum_t rev;
  svn_boolean_t start_empty;

  svn_depth_t depth = svn_depth_infinity;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "ccrb?(?c)?w",
                                 &path, &url, &rev, &start_empty,
                                 &lock_token, &depth_word));



  path = svn_relpath_canonicalize(path, pool);
  url = svn_uri_canonicalize(url, pool);
  if (depth_word)
    depth = svn_depth_from_word(depth_word);
  if (!b->err)
    b->err = get_fs_path(svn_path_uri_decode(b->repos_url, pool),
                         svn_path_uri_decode(url, pool),
                         &fs_path);
  if (!b->err)
    b->err = svn_repos_link_path3(b->report_baton, path, fs_path, rev,
                                  depth, start_empty, lock_token, pool);
  b->entry_counter++;
  return SVN_NO_ERROR;
}
