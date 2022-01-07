
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct svn_client__dirent_fetcher_baton_t {int ra_session; int target_revision; int anchor_url; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_DIRENT_KIND ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_client__ensure_ra_session_url (char const**,int ,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_check_path (int ,char const*,int ,scalar_t__*,int *) ;
 int svn_ra_get_dir2 (int ,int **,int *,int *,char const*,int ,int ,int *) ;
 int svn_ra_get_path_relative_to_session (int ,char const**,char const*,int *) ;
 int svn_ra_reparent (int ,char const*,int *) ;
 int svn_uri__is_ancestor (int ,char const*) ;

svn_error_t *
svn_client__dirent_fetcher(void *baton,
                           apr_hash_t **dirents,
                           const char *repos_root_url,
                           const char *repos_relpath,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  struct svn_client__dirent_fetcher_baton_t *dfb = baton;
  const char *old_url = ((void*)0);
  const char *session_relpath;
  svn_node_kind_t kind;
  const char *url;

  url = svn_path_url_add_component2(repos_root_url, repos_relpath,
                                    scratch_pool);

  if (!svn_uri__is_ancestor(dfb->anchor_url, url))
    {
      SVN_ERR(svn_client__ensure_ra_session_url(&old_url, dfb->ra_session,
                                                url, scratch_pool));
      session_relpath = "";
    }
  else
    SVN_ERR(svn_ra_get_path_relative_to_session(dfb->ra_session,
                                                &session_relpath, url,
                                                scratch_pool));


  SVN_ERR(svn_ra_check_path(dfb->ra_session, session_relpath,
                            dfb->target_revision, &kind, scratch_pool));

  if (kind == svn_node_dir)
    SVN_ERR(svn_ra_get_dir2(dfb->ra_session, dirents, ((void*)0), ((void*)0),
                            session_relpath, dfb->target_revision,
                            SVN_DIRENT_KIND, result_pool));
  else
    *dirents = ((void*)0);

  if (old_url)
    SVN_ERR(svn_ra_reparent(dfb->ra_session, old_url, scratch_pool));

  return SVN_NO_ERROR;
}
