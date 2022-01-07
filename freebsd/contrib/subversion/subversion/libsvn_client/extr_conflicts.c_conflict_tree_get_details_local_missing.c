
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_17__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct TYPE_18__ {struct conflict_tree_local_missing_details* tree_conflict_local_details; int pool; int local_abspath; } ;
typedef TYPE_2__ svn_client_conflict_t ;
struct TYPE_19__ {scalar_t__ rev; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
struct conflict_tree_local_missing_details {char const* deleted_rev_author; int * sibling_moves; int * moves; int deleted_repos_relpath; scalar_t__ deleted_rev; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 struct conflict_tree_local_missing_details* apr_pcalloc (int ,int) ;
 int find_moves_in_natural_history (int **,char const*,scalar_t__,int ,scalar_t__,char const*,char const*,char const*,int *,TYPE_1__*,int ,int *) ;
 int find_nearest_yca (TYPE_3__**,char const*,scalar_t__,char const*,scalar_t__,char const*,char const*,int *,TYPE_1__*,int *,int *) ;
 int find_related_node (char const**,scalar_t__*,char const*,scalar_t__,char const*,scalar_t__,TYPE_2__*,TYPE_1__*,int *,int *) ;
 int find_revision_for_suspected_deletion (scalar_t__*,char const**,int *,int **,TYPE_2__*,char const*,char const*,scalar_t__,int ,char const*,scalar_t__,TYPE_1__*,int ,int *) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,int *,int *,int ,int ,TYPE_1__*,int *,int *) ;
 int svn_client_conflict_get_incoming_new_repos_location (char const**,scalar_t__*,int *,TYPE_2__*,int *,int *) ;
 int svn_client_conflict_get_incoming_old_repos_location (char const**,scalar_t__*,int *,TYPE_2__*,int *,int *) ;
 char* svn_client_conflict_get_local_abspath (TYPE_2__*) ;
 char* svn_dirent_basename (int ,int *) ;
 int svn_dirent_dirname (int ,int *) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_check_path (int *,char*,scalar_t__,int *,int *) ;
 int svn_relpath_join (char const*,char const*,int ) ;
 int svn_wc__node_get_repos_info (scalar_t__*,char const**,char const**,char const**,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
conflict_tree_get_details_local_missing(svn_client_conflict_t *conflict,
                                        svn_client_ctx_t *ctx,
                                        apr_pool_t *scratch_pool)
{
  const char *old_repos_relpath;
  const char *new_repos_relpath;
  const char *parent_repos_relpath;
  svn_revnum_t parent_peg_rev;
  svn_revnum_t old_rev;
  svn_revnum_t new_rev;
  svn_revnum_t deleted_rev;
  const char *deleted_rev_author;
  svn_node_kind_t replacing_node_kind;
  const char *deleted_basename;
  struct conflict_tree_local_missing_details *details;
  apr_array_header_t *moves = ((void*)0);
  apr_array_header_t *sibling_moves = ((void*)0);
  const char *related_repos_relpath;
  svn_revnum_t related_peg_rev;
  const char *repos_root_url;
  const char *repos_uuid;

  SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
            &old_repos_relpath, &old_rev, ((void*)0), conflict,
            scratch_pool, scratch_pool));
  SVN_ERR(svn_client_conflict_get_incoming_new_repos_location(
            &new_repos_relpath, &new_rev, ((void*)0), conflict,
            scratch_pool, scratch_pool));



  deleted_basename = svn_dirent_basename(conflict->local_abspath,
                                         scratch_pool);
  SVN_ERR(svn_wc__node_get_repos_info(&parent_peg_rev, &parent_repos_relpath,
                                      &repos_root_url, &repos_uuid,
                                      ctx->wc_ctx,
                                      svn_dirent_dirname(
                                        conflict->local_abspath,
                                        scratch_pool),
                                      scratch_pool,
                                      scratch_pool));



  related_repos_relpath =
            (old_rev < new_rev ? new_repos_relpath : old_repos_relpath);
  related_peg_rev = (old_rev < new_rev ? new_rev : old_rev);



  if (related_repos_relpath != ((void*)0) && related_peg_rev != SVN_INVALID_REVNUM)
    SVN_ERR(find_related_node(
              &related_repos_relpath, &related_peg_rev,
              related_repos_relpath, related_peg_rev,
              (old_rev < new_rev ? old_repos_relpath : new_repos_relpath),
              (old_rev < new_rev ? old_rev : new_rev),
              conflict, ctx, scratch_pool, scratch_pool));

  SVN_ERR(find_revision_for_suspected_deletion(
            &deleted_rev, &deleted_rev_author, &replacing_node_kind, &moves,
            conflict, deleted_basename, parent_repos_relpath,
            parent_peg_rev, 0, related_repos_relpath, related_peg_rev,
            ctx, conflict->pool, scratch_pool));


  if (deleted_rev == SVN_INVALID_REVNUM)
    {
      const char *victim_abspath;
      svn_ra_session_t *ra_session;
      const char *url, *corrected_url;
      svn_client__pathrev_t *yca_loc;
      svn_revnum_t end_rev;
      svn_node_kind_t related_node_kind;




      victim_abspath = svn_client_conflict_get_local_abspath(conflict);
      url = svn_path_url_add_component2(repos_root_url, related_repos_relpath,
                                        scratch_pool);
      SVN_ERR(svn_client__open_ra_session_internal(&ra_session,
                                                   &corrected_url,
                                                   url, ((void*)0), ((void*)0),
                                                   FALSE,
                                                   FALSE,
                                                   ctx,
                                                   scratch_pool,
                                                   scratch_pool));


      SVN_ERR(find_nearest_yca(&yca_loc, related_repos_relpath, related_peg_rev,
                               parent_repos_relpath, parent_peg_rev,
                               repos_root_url, repos_uuid, ra_session, ctx,
                               scratch_pool, scratch_pool));
      if (yca_loc == ((void*)0))
        return SVN_NO_ERROR;
      end_rev = yca_loc->rev;



      if (end_rev >= related_peg_rev)
        end_rev = related_peg_rev > 0 ? related_peg_rev - 1 : 0;

      SVN_ERR(svn_ra_check_path(ra_session, "", related_peg_rev,
                                &related_node_kind, scratch_pool));
      SVN_ERR(find_moves_in_natural_history(&sibling_moves,
                                            related_repos_relpath,
                                            related_peg_rev,
                                            related_node_kind,
                                            end_rev,
                                            victim_abspath,
                                            repos_root_url, repos_uuid,
                                            ra_session, ctx,
                                            conflict->pool, scratch_pool));

      if (sibling_moves == ((void*)0))
        return SVN_NO_ERROR;


    }

  details = apr_pcalloc(conflict->pool, sizeof(*details));
  details->deleted_rev = deleted_rev;
  details->deleted_rev_author = deleted_rev_author;
  if (deleted_rev != SVN_INVALID_REVNUM)
    details->deleted_repos_relpath = svn_relpath_join(parent_repos_relpath,
                                                      deleted_basename,
                                                      conflict->pool);
  details->moves = moves;
  details->sibling_moves = sibling_moves;

  conflict->tree_conflict_local_details = details;

  return SVN_NO_ERROR;
}
