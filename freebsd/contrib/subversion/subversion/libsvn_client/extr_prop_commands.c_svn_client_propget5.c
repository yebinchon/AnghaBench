
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


typedef void* svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_prop_inherited_item_t ;
struct TYPE_40__ {void* number; } ;
struct TYPE_41__ {scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_42__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_43__ {int wc_ctx; } ;
typedef TYPE_4__ svn_client_ctx_t ;
struct TYPE_44__ {void* rev; int url; } ;
typedef TYPE_5__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 scalar_t__ SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC (scalar_t__) ;
 scalar_t__ SVN_CLIENT__REVKIND_NEEDS_WC (scalar_t__) ;
 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_CLIENT_BAD_REVISION ;
 int SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED ;
 int SVN_ERR_UNVERSIONED_RESOURCE ;
 void* SVN_INVALID_REVNUM ;
 TYPE_3__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * apr_array_make (int *,int ,int) ;
 int * apr_hash_make (int *) ;
 TYPE_3__* error_if_wcprop_name (char const*) ;
 TYPE_3__* get_prop_from_wc (int **,char const*,char const*,int,scalar_t__,int ,int const*,TYPE_4__*,int *,int *) ;
 TYPE_2__* svn_cl__rev_default_to_head_or_working (TYPE_2__ const*,char const*) ;
 TYPE_2__* svn_cl__rev_default_to_peg (TYPE_2__ const*,TYPE_2__ const*) ;
 TYPE_3__* svn_client__get_revision_number (void**,int *,int ,char const*,int *,TYPE_2__ const*,int *) ;
 TYPE_3__* svn_client__iprop_relpaths_to_urls (int *,char const*,int *,int *) ;
 TYPE_3__* svn_client__ra_session_from_path2 (int **,TYPE_5__**,char const*,int *,TYPE_2__ const*,TYPE_2__ const*,TYPE_4__*,int *) ;
 TYPE_3__* svn_client__remote_propget (int *,int **,char const*,int ,char*,scalar_t__,void*,int *,int ,int *,int *) ;
 TYPE_3__* svn_client_get_repos_root (char const**,int *,char const*,TYPE_4__*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_create (int ,int *,int *) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_opt_revision_base ;
 scalar_t__ svn_opt_revision_committed ;
 void* svn_opt_revision_number ;
 scalar_t__ svn_opt_revision_unspecified ;
 scalar_t__ svn_opt_revision_working ;
 scalar_t__ svn_path_is_url (char const*) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 TYPE_3__* svn_ra_check_path (int *,char*,void*,scalar_t__*,int *) ;
 TYPE_3__* svn_wc__get_iprops (int **,int ,char const*,char const*,int *,int *) ;
 TYPE_3__* svn_wc__node_get_origin (int *,int *,char const**,char const**,int *,int *,int *,int ,char const*,int ,int *,int *) ;
 TYPE_3__* svn_wc_read_kind2 (scalar_t__*,int ,char const*,int,int ,int *) ;

svn_error_t *
svn_client_propget5(apr_hash_t **props,
                    apr_array_header_t **inherited_props,
                    const char *propname,
                    const char *target,
                    const svn_opt_revision_t *peg_revision,
                    const svn_opt_revision_t *revision,
                    svn_revnum_t *actual_revnum,
                    svn_depth_t depth,
                    const apr_array_header_t *changelists,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_revnum_t revnum;
  svn_boolean_t local_explicit_props;
  svn_boolean_t local_iprops;

  SVN_ERR(error_if_wcprop_name(propname));
  if (!svn_path_is_url(target))
    SVN_ERR_ASSERT(svn_dirent_is_absolute(target));

  peg_revision = svn_cl__rev_default_to_head_or_working(peg_revision,
                                                        target);
  revision = svn_cl__rev_default_to_peg(revision, peg_revision);

  local_explicit_props =
    (! svn_path_is_url(target)
     && SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(peg_revision->kind)
     && SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(revision->kind));

  local_iprops =
    (local_explicit_props
     && (peg_revision->kind == svn_opt_revision_working
         || peg_revision->kind == svn_opt_revision_unspecified )
     && (revision->kind == svn_opt_revision_working
         || revision->kind == svn_opt_revision_unspecified ));

  if (local_explicit_props)
    {
      svn_node_kind_t kind;
      svn_boolean_t pristine;
      svn_error_t *err;


      pristine = (revision->kind == svn_opt_revision_committed
                  || revision->kind == svn_opt_revision_base);

      SVN_ERR(svn_wc_read_kind2(&kind, ctx->wc_ctx, target,
                                pristine, FALSE,
                                scratch_pool));

      if (kind == svn_node_unknown || kind == svn_node_none)
        {


          return svn_error_createf(SVN_ERR_UNVERSIONED_RESOURCE, ((void*)0),
                                   _("'%s' is not under version control"),
                                   svn_dirent_local_style(target,
                                                          scratch_pool));
        }

      err = svn_client__get_revision_number(&revnum, ((void*)0), ctx->wc_ctx,
                                            target, ((void*)0), revision,
                                            scratch_pool);
      if (err && err->apr_err == SVN_ERR_CLIENT_BAD_REVISION)
        {
          svn_error_clear(err);
          revnum = SVN_INVALID_REVNUM;
        }
      else if (err)
        return svn_error_trace(err);

      if (inherited_props && local_iprops)
        {
          const char *repos_root_url;

          SVN_ERR(svn_wc__get_iprops(inherited_props, ctx->wc_ctx,
                                     target, propname,
                                     result_pool, scratch_pool));
          SVN_ERR(svn_client_get_repos_root(&repos_root_url, ((void*)0),
                                            target, ctx, scratch_pool,
                                            scratch_pool));
          SVN_ERR(svn_client__iprop_relpaths_to_urls(*inherited_props,
                                                     repos_root_url,
                                                     result_pool,
                                                     scratch_pool));
        }

      SVN_ERR(get_prop_from_wc(props, propname, target,
                               pristine, kind,
                               depth, changelists, ctx, result_pool,
                               scratch_pool));
    }

  if ((inherited_props && !local_iprops)
      || !local_explicit_props)
    {
      svn_ra_session_t *ra_session;
      svn_node_kind_t kind;
      svn_opt_revision_t new_operative_rev;
      svn_opt_revision_t new_peg_rev;




      if (SVN_CLIENT__REVKIND_NEEDS_WC(peg_revision->kind)
          || SVN_CLIENT__REVKIND_NEEDS_WC(revision->kind))
        {
          const char *repos_relpath;
          const char *repos_root_url;
          const char *local_abspath;



          if (svn_path_is_url(target))
            return svn_error_create(SVN_ERR_CLIENT_VERSIONED_PATH_REQUIRED,
                                    ((void*)0), ((void*)0));

          SVN_ERR_ASSERT(svn_dirent_is_absolute(target));
          local_abspath = target;

          if (SVN_CLIENT__REVKIND_NEEDS_WC(peg_revision->kind))
            {
              SVN_ERR(svn_wc__node_get_origin(((void*)0), ((void*)0),
                                              &repos_relpath,
                                              &repos_root_url,
                                              ((void*)0), ((void*)0), ((void*)0),
                                              ctx->wc_ctx,
                                              local_abspath,
                                              FALSE,
                                              result_pool,
                                              scratch_pool));
              if (repos_relpath)
                {
                  target = svn_path_url_add_component2(repos_root_url,
                                                       repos_relpath,
                                                       scratch_pool);
                  if (SVN_CLIENT__REVKIND_NEEDS_WC(peg_revision->kind))
                    {
                      svn_revnum_t resolved_peg_rev;

                      SVN_ERR(svn_client__get_revision_number(
                        &resolved_peg_rev, ((void*)0), ctx->wc_ctx,
                        local_abspath, ((void*)0), peg_revision, scratch_pool));
                      new_peg_rev.kind = svn_opt_revision_number;
                      new_peg_rev.value.number = resolved_peg_rev;
                      peg_revision = &new_peg_rev;
                    }

                  if (SVN_CLIENT__REVKIND_NEEDS_WC(revision->kind))
                    {
                      svn_revnum_t resolved_operative_rev;

                      SVN_ERR(svn_client__get_revision_number(
                        &resolved_operative_rev, ((void*)0), ctx->wc_ctx,
                        local_abspath, ((void*)0), revision, scratch_pool));
                      new_operative_rev.kind = svn_opt_revision_number;
                      new_operative_rev.value.number = resolved_operative_rev;
                      revision = &new_operative_rev;
                    }
                }
              else
                {


                  local_iprops = TRUE;
                  *inherited_props = apr_array_make(
                    result_pool, 0, sizeof(svn_prop_inherited_item_t *));
                }
            }
        }


      if (!local_explicit_props || !local_iprops)
        {
          svn_client__pathrev_t *loc;


          SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &loc,
                                                    target, ((void*)0),
                                                    peg_revision,
                                                    revision, ctx,
                                                    scratch_pool));

          SVN_ERR(svn_ra_check_path(ra_session, "", loc->rev, &kind,
                                    scratch_pool));

          if (!local_explicit_props)
            *props = apr_hash_make(result_pool);

          SVN_ERR(svn_client__remote_propget(
                                 !local_explicit_props ? *props : ((void*)0),
                                 !local_iprops ? inherited_props : ((void*)0),
                                 propname, loc->url, "",
                                 kind, loc->rev, ra_session,
                                 depth, result_pool, scratch_pool));
          revnum = loc->rev;
        }
    }

  if (actual_revnum)
    *actual_revnum = revnum;
  return SVN_NO_ERROR;
}
