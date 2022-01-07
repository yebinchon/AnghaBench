
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ svn_wc_operation_t ;
struct TYPE_11__ {char const* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_12__ {struct conflict_tree_incoming_add_details* tree_conflict_incoming_details; int pool; } ;
typedef TYPE_2__ svn_client_conflict_t ;
struct find_added_rev_baton {scalar_t__ added_rev; char const* repos_relpath; int * pool; int * parent_repos_relpath; int * ctx; void* victim_abspath; int member_0; } ;
struct conflict_tree_incoming_add_details {scalar_t__ added_rev; int * moves; int * added_rev_author; int * deleted_rev_author; scalar_t__ deleted_rev; void* repos_relpath; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_REVISION_AUTHOR ;
 void* _ (char*) ;
 struct conflict_tree_incoming_add_details* apr_pcalloc (int ,int) ;
 void* apr_pstrdup (int ,char const*) ;
 int find_added_rev ;
 int find_revision_for_suspected_deletion (scalar_t__*,char const**,int *,int **,TYPE_2__*,int ,int ,scalar_t__,scalar_t__,int *,scalar_t__,int *,int ,int *) ;
 int svn_client__open_ra_session_internal (int **,char const**,char const*,int *,int *,int ,int ,int *,int *,int *) ;
 int svn_client_conflict_get_incoming_new_repos_location (char const**,scalar_t__*,int *,TYPE_2__*,int *,int *) ;
 int svn_client_conflict_get_incoming_old_repos_location (char const**,scalar_t__*,int *,TYPE_2__*,int *,int *) ;
 void* svn_client_conflict_get_local_abspath (TYPE_2__*) ;
 scalar_t__ svn_client_conflict_get_operation (TYPE_2__*) ;
 int svn_client_conflict_get_repos_info (char const**,int *,TYPE_2__*,int *,int *) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_get_deleted_rev (int *,char*,scalar_t__,scalar_t__,scalar_t__*,int *) ;
 int svn_ra_get_latest_revnum (int *,scalar_t__*,int *) ;
 int svn_ra_get_location_segments (int *,char*,scalar_t__,scalar_t__,scalar_t__,int ,struct find_added_rev_baton*,int *) ;
 int svn_ra_rev_prop (int *,scalar_t__,int ,TYPE_1__**,int *) ;
 int svn_relpath_basename (char const*,int *) ;
 int svn_relpath_dirname (char const*,int *) ;
 scalar_t__ svn_wc_operation_merge ;
 scalar_t__ svn_wc_operation_switch ;
 scalar_t__ svn_wc_operation_update ;

__attribute__((used)) static svn_error_t *
conflict_tree_get_details_incoming_add(svn_client_conflict_t *conflict,
                                       svn_client_ctx_t *ctx,
                                       apr_pool_t *scratch_pool)
{
  const char *old_repos_relpath;
  const char *new_repos_relpath;
  const char *repos_root_url;
  svn_revnum_t old_rev;
  svn_revnum_t new_rev;
  struct conflict_tree_incoming_add_details *details;
  svn_wc_operation_t operation;

  SVN_ERR(svn_client_conflict_get_incoming_old_repos_location(
            &old_repos_relpath, &old_rev, ((void*)0), conflict, scratch_pool,
            scratch_pool));
  SVN_ERR(svn_client_conflict_get_incoming_new_repos_location(
            &new_repos_relpath, &new_rev, ((void*)0), conflict, scratch_pool,
            scratch_pool));
  SVN_ERR(svn_client_conflict_get_repos_info(&repos_root_url, ((void*)0),
                                             conflict,
                                             scratch_pool, scratch_pool));
  operation = svn_client_conflict_get_operation(conflict);

  if (operation == svn_wc_operation_update ||
      operation == svn_wc_operation_switch)
    {
      const char *url;
      const char *corrected_url;
      svn_string_t *author_revprop;
      struct find_added_rev_baton b = { 0 };
      svn_ra_session_t *ra_session;
      svn_revnum_t deleted_rev;
      svn_revnum_t head_rev;

      url = svn_path_url_add_component2(repos_root_url, new_repos_relpath,
                                        scratch_pool);
      SVN_ERR(svn_client__open_ra_session_internal(&ra_session,
                                                   &corrected_url,
                                                   url, ((void*)0), ((void*)0),
                                                   FALSE,
                                                   FALSE,
                                                   ctx,
                                                   scratch_pool,
                                                   scratch_pool));

      details = apr_pcalloc(conflict->pool, sizeof(*details));
      b.ctx = ctx,
      b.victim_abspath = svn_client_conflict_get_local_abspath(conflict),
      b.added_rev = SVN_INVALID_REVNUM;
      b.repos_relpath = ((void*)0);
      b.parent_repos_relpath = ((void*)0);
      b.pool = scratch_pool;


      SVN_ERR(svn_ra_get_location_segments(ra_session, "", new_rev,
                                           new_rev, SVN_INVALID_REVNUM,
                                           find_added_rev, &b,
                                           scratch_pool));

      SVN_ERR(svn_ra_rev_prop(ra_session, b.added_rev,
                              SVN_PROP_REVISION_AUTHOR,
                              &author_revprop, scratch_pool));
      details->repos_relpath = apr_pstrdup(conflict->pool, b.repos_relpath);
      details->added_rev = b.added_rev;
      if (author_revprop)
        details->added_rev_author = apr_pstrdup(conflict->pool,
                                          author_revprop->data);
      else
        details->added_rev_author = _("unknown author");
      details->deleted_rev = SVN_INVALID_REVNUM;
      details->deleted_rev_author = ((void*)0);




      SVN_ERR(svn_ra_get_latest_revnum(ra_session, &head_rev, scratch_pool));
      if (new_rev < head_rev)
        {
          SVN_ERR(svn_ra_get_deleted_rev(ra_session, "", new_rev, head_rev,
                                         &deleted_rev, scratch_pool));
          if (SVN_IS_VALID_REVNUM(deleted_rev))
           {
              SVN_ERR(svn_ra_rev_prop(ra_session, deleted_rev,
                                      SVN_PROP_REVISION_AUTHOR,
                                      &author_revprop, scratch_pool));
              details->deleted_rev = deleted_rev;
              if (author_revprop)
                details->deleted_rev_author = apr_pstrdup(conflict->pool,
                                                          author_revprop->data);
              else
                details->deleted_rev_author = _("unknown author");
            }
        }
    }
  else if (operation == svn_wc_operation_merge)
    {
      if (old_rev < new_rev)
        {



          const char *url;
          const char *corrected_url;
          svn_string_t *author_revprop;
          struct find_added_rev_baton b = { 0 };
          svn_ra_session_t *ra_session;

          url = svn_path_url_add_component2(repos_root_url, new_repos_relpath,
                                            scratch_pool);
          SVN_ERR(svn_client__open_ra_session_internal(&ra_session,
                                                       &corrected_url,
                                                       url, ((void*)0), ((void*)0),
                                                       FALSE,
                                                       FALSE,
                                                       ctx,
                                                       scratch_pool,
                                                       scratch_pool));

          details = apr_pcalloc(conflict->pool, sizeof(*details));
          b.victim_abspath = svn_client_conflict_get_local_abspath(conflict);
          b.ctx = ctx;
          b.added_rev = SVN_INVALID_REVNUM;
          b.repos_relpath = ((void*)0);
          b.parent_repos_relpath = ((void*)0);
          b.pool = scratch_pool;


          SVN_ERR(svn_ra_get_location_segments(ra_session, "", new_rev,
                                               new_rev, old_rev,
                                               find_added_rev, &b,
                                               scratch_pool));

          SVN_ERR(svn_ra_rev_prop(ra_session, b.added_rev,
                                  SVN_PROP_REVISION_AUTHOR,
                                  &author_revprop, scratch_pool));
          details->repos_relpath = apr_pstrdup(conflict->pool, b.repos_relpath);
          details->added_rev = b.added_rev;
          if (author_revprop)
            details->added_rev_author = apr_pstrdup(conflict->pool,
                                                    author_revprop->data);
          else
            details->added_rev_author = _("unknown author");
          details->deleted_rev = SVN_INVALID_REVNUM;
          details->deleted_rev_author = ((void*)0);
        }
      else
        {




          svn_revnum_t deleted_rev;
          const char *deleted_rev_author;
          svn_node_kind_t replacing_node_kind;
          apr_array_header_t *moves;

          SVN_ERR(find_revision_for_suspected_deletion(
                    &deleted_rev, &deleted_rev_author, &replacing_node_kind,
                    &moves, conflict,
                    svn_relpath_basename(old_repos_relpath, scratch_pool),
                    svn_relpath_dirname(old_repos_relpath, scratch_pool),
                    old_rev, new_rev,
                    ((void*)0), SVN_INVALID_REVNUM,
                    ctx,
                    conflict->pool, scratch_pool));
          if (deleted_rev == SVN_INVALID_REVNUM)
            {



              return SVN_NO_ERROR;
            }

          details = apr_pcalloc(conflict->pool, sizeof(*details));
          details->repos_relpath = apr_pstrdup(conflict->pool,
                                               new_repos_relpath);
          details->deleted_rev = deleted_rev;
          details->deleted_rev_author = apr_pstrdup(conflict->pool,
                                                    deleted_rev_author);

          details->added_rev = SVN_INVALID_REVNUM;
          details->added_rev_author = ((void*)0);
          details->moves = moves;
        }
    }
  else
    {
      details = ((void*)0);
    }

  conflict->tree_conflict_incoming_details = details;

  return SVN_NO_ERROR;
}
