
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_proplist_receiver2_t ;
struct TYPE_13__ {void* number; } ;
struct TYPE_14__ {TYPE_1__ value; void* kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_15__ {int cancel_baton; int cancel_func; int wc_ctx; } ;
typedef TYPE_3__ svn_client_ctx_t ;
struct TYPE_16__ {int rev; int url; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 scalar_t__ SVN_CLIENT__REVKIND_NEEDS_WC (void*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED ;
 int * SVN_NO_ERROR ;
 int remote_proplist (int ,char*,int ,int ,int *,int ,int ,int ,int ,void*,int ,int ,int *) ;
 int svn_client__get_revision_number (void**,int *,int ,char const*,int *,TYPE_2__ const*,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_4__**,char const*,int *,TYPE_2__ const*,TYPE_2__ const*,TYPE_3__*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 void* svn_opt_revision_number ;
 scalar_t__ svn_path_is_url (char const*) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_ra_check_path (int *,char*,int ,int *,int *) ;
 int svn_wc__node_get_origin (int *,int *,char const**,char const**,int *,int *,int *,int ,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_remote_props(const char *path_or_url,
                 const svn_opt_revision_t *peg_revision,
                 const svn_opt_revision_t *revision,
                 svn_depth_t depth,
                 svn_boolean_t get_explicit_props,
                 svn_boolean_t get_target_inherited_props,
                 svn_proplist_receiver2_t receiver,
                 void *receiver_baton,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *scratch_pool)
{
  svn_ra_session_t *ra_session;
  svn_node_kind_t kind;
  svn_opt_revision_t new_operative_rev;
  svn_opt_revision_t new_peg_rev;
  svn_client__pathrev_t *loc;




  if (SVN_CLIENT__REVKIND_NEEDS_WC(peg_revision->kind)
      || SVN_CLIENT__REVKIND_NEEDS_WC(revision->kind))
    {
      const char *repos_relpath;
      const char *repos_root_url;
      const char *local_abspath;
      svn_boolean_t is_copy;



      if (svn_path_is_url(path_or_url))
        return svn_error_create(SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED,
                                ((void*)0), ((void*)0));

      SVN_ERR(svn_dirent_get_absolute(&local_abspath, path_or_url,
                                      scratch_pool));

      if (SVN_CLIENT__REVKIND_NEEDS_WC(peg_revision->kind))
        {
          SVN_ERR(svn_wc__node_get_origin(&is_copy,
                                          ((void*)0),
                                          &repos_relpath,
                                          &repos_root_url,
                                          ((void*)0), ((void*)0), ((void*)0),
                                          ctx->wc_ctx,
                                          local_abspath,
                                          FALSE,
                                          scratch_pool,
                                          scratch_pool));
          if (repos_relpath)
            {
              path_or_url =
                svn_path_url_add_component2(repos_root_url,
                                            repos_relpath,
                                            scratch_pool);
              if (SVN_CLIENT__REVKIND_NEEDS_WC(peg_revision->kind))
                {
                  svn_revnum_t resolved_peg_rev;

                  SVN_ERR(svn_client__get_revision_number(&resolved_peg_rev,
                                                          ((void*)0), ctx->wc_ctx,
                                                          local_abspath, ((void*)0),
                                                          peg_revision,
                                                          scratch_pool));
                  new_peg_rev.kind = svn_opt_revision_number;
                  new_peg_rev.value.number = resolved_peg_rev;
                  peg_revision = &new_peg_rev;
                }

              if (SVN_CLIENT__REVKIND_NEEDS_WC(revision->kind))
                {
                  svn_revnum_t resolved_operative_rev;

                  SVN_ERR(svn_client__get_revision_number(
                    &resolved_operative_rev,
                    ((void*)0), ctx->wc_ctx,
                    local_abspath, ((void*)0),
                    revision,
                    scratch_pool));
                  new_operative_rev.kind = svn_opt_revision_number;
                  new_operative_rev.value.number = resolved_operative_rev;
                  revision = &new_operative_rev;
                }
            }
          else
            {



                  if (!get_explicit_props)
                    return SVN_NO_ERROR;
            }
        }
    }


  SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &loc,
                                            path_or_url, ((void*)0),
                                            peg_revision,
                                            revision, ctx,
                                            scratch_pool));

  SVN_ERR(svn_ra_check_path(ra_session, "", loc->rev, &kind,
                            scratch_pool));

  SVN_ERR(remote_proplist(loc->url, "", kind, loc->rev, ra_session,
                          get_explicit_props,
                          get_target_inherited_props,
                          depth, receiver, receiver_baton,
                          ctx->cancel_func, ctx->cancel_baton,
                          scratch_pool));
  return SVN_NO_ERROR;
}
