
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_5__ {int pool; } ;
typedef TYPE_1__ svn_client_conflict_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int find_revision_for_suspected_deletion (scalar_t__*,char const**,scalar_t__*,int **,TYPE_1__*,char const*,char const*,scalar_t__,int ,char const*,scalar_t__,int *,int ,int *) ;
 scalar_t__ rev_below (scalar_t__) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,int *,int *,int ,int ,int *,int *,int *) ;
 int svn_client_conflict_get_repos_info (char const**,int *,TYPE_1__*,int *,int *) ;
 scalar_t__ svn_node_none ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_check_path (int *,char*,scalar_t__,scalar_t__*,int *) ;
 char* svn_relpath_basename (char const*,int *) ;
 char* svn_relpath_dirname (char const*,int *) ;

__attribute__((used)) static svn_error_t *
find_related_node(const char **related_repos_relpath,
                  svn_revnum_t *related_peg_rev,
                  const char *younger_related_repos_relpath,
                  svn_revnum_t younger_related_peg_rev,
                  const char *older_repos_relpath,
                  svn_revnum_t older_peg_rev,
                  svn_client_conflict_t *conflict,
                  svn_client_ctx_t *ctx,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *repos_root_url;
  const char *related_url;
  const char *corrected_url;
  svn_node_kind_t related_node_kind;
  svn_ra_session_t *ra_session;

  *related_repos_relpath = ((void*)0);
  *related_peg_rev = SVN_INVALID_REVNUM;

  SVN_ERR(svn_client_conflict_get_repos_info(&repos_root_url, ((void*)0),
                                             conflict,
                                             scratch_pool, scratch_pool));
  related_url = svn_path_url_add_component2(repos_root_url,
                                            younger_related_repos_relpath,
                                            scratch_pool);
  SVN_ERR(svn_client__open_ra_session_internal(&ra_session,
                                               &corrected_url,
                                               related_url, ((void*)0),
                                               ((void*)0),
                                               FALSE,
                                               FALSE,
                                               ctx,
                                               scratch_pool,
                                               scratch_pool));
  SVN_ERR(svn_ra_check_path(ra_session, "", younger_related_peg_rev,
                            &related_node_kind, scratch_pool));
  if (related_node_kind == svn_node_none)
    {
      svn_revnum_t related_deleted_rev;
      const char *related_deleted_rev_author;
      svn_node_kind_t related_replacing_node_kind;
      const char *related_basename;
      const char *related_parent_repos_relpath;
      apr_array_header_t *related_moves;






      related_basename = svn_relpath_basename(younger_related_repos_relpath,
                                              scratch_pool);
      related_parent_repos_relpath =
        svn_relpath_dirname(younger_related_repos_relpath, scratch_pool);
      SVN_ERR(find_revision_for_suspected_deletion(
                &related_deleted_rev, &related_deleted_rev_author,
                &related_replacing_node_kind, &related_moves,
                conflict, related_basename,
                related_parent_repos_relpath,
                younger_related_peg_rev, 0,
                older_repos_relpath, older_peg_rev,
                ctx, conflict->pool, scratch_pool));


      if (related_deleted_rev == SVN_INVALID_REVNUM)
        return SVN_NO_ERROR;


      *related_repos_relpath = younger_related_repos_relpath;
      *related_peg_rev = rev_below(related_deleted_rev);
    }
  else
    {
      *related_repos_relpath = younger_related_repos_relpath;
      *related_peg_rev = younger_related_peg_rev;
    }

  return SVN_NO_ERROR;
}
