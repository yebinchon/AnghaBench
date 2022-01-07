
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
struct TYPE_2__ {int only_empty_entries; int entry_counter; int report_baton; scalar_t__ err; int * from_rev; } ;
typedef TYPE_1__ report_driver_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_depth_from_word (char const*) ;
 int svn_depth_infinity ;
 int svn_ra_svn__parse_tuple (int *,char*,char const**,int *,int *,char const**,char const**) ;
 char* svn_relpath_canonicalize (char const*,int *) ;
 scalar_t__ svn_repos_set_path3 (int ,char const*,int ,int ,int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *set_path(svn_ra_svn_conn_t *conn, apr_pool_t *pool,
                             svn_ra_svn__list_t *params, void *baton)
{
  report_driver_baton_t *b = baton;
  const char *path, *lock_token, *depth_word;
  svn_revnum_t rev;

  svn_depth_t depth = svn_depth_infinity;
  svn_boolean_t start_empty;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "crb?(?c)?w",
                                  &path, &rev, &start_empty, &lock_token,
                                  &depth_word));
  if (depth_word)
    depth = svn_depth_from_word(depth_word);
  path = svn_relpath_canonicalize(path, pool);
  if (b->from_rev && strcmp(path, "") == 0)
    *b->from_rev = rev;
  if (!b->err)
    b->err = svn_repos_set_path3(b->report_baton, path, rev, depth,
                                 start_empty, lock_token, pool);
  b->entry_counter++;
  if (!start_empty)
    b->only_empty_entries = FALSE;
  return SVN_NO_ERROR;
}
