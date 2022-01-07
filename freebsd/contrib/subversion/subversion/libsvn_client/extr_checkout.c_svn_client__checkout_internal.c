
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_29__ {int number; } ;
struct TYPE_30__ {scalar_t__ member_0; scalar_t__ kind; TYPE_1__ value; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_31__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_32__ {int wc_ctx; } ;
typedef TYPE_4__ svn_client_ctx_t ;
struct TYPE_33__ {int url; int rev; } ;
typedef TYPE_5__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_CLIENT_BAD_REVISION ;
 scalar_t__ SVN_ERR_RA_ILLEGAL_URL ;
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ;
 scalar_t__ SVN_ERR_WC_NODE_KIND_CHANGE ;
 scalar_t__ SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 TYPE_3__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int initialize_area (char const*,TYPE_5__*,int ,TYPE_4__*,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_5__**,char const*,int *,TYPE_2__ const*,TYPE_2__ const*,TYPE_4__*,int *) ;
 int svn_client__resolve_rev_and_url (TYPE_5__**,int *,char const*,TYPE_2__ const*,TYPE_2__ const*,TYPE_4__*,int *) ;
 int svn_client__update_internal (int *,int *,char const*,TYPE_2__*,int ,int ,int ,int ,int ,int ,int ,int *,TYPE_4__*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_create (int ,int *,int *) ;
 TYPE_3__* svn_error_createf (scalar_t__,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_make_dir_recursively (char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_opt_revision_date ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_number ;
 int svn_ra_check_path (int *,char*,int ,scalar_t__*,int *) ;
 TYPE_3__* svn_ra_reparent (int *,char const*,int *) ;
 int svn_uri_is_canonical (char const*,int *) ;
 int svn_wc__node_get_url (char const**,int ,char const*,int *,int *) ;
 int svn_wc_check_wc2 (int*,int ,char const*,int *) ;

svn_error_t *
svn_client__checkout_internal(svn_revnum_t *result_rev,
                              svn_boolean_t *timestamp_sleep,
                              const char *url,
                              const char *local_abspath,
                              const svn_opt_revision_t *peg_revision,
                              const svn_opt_revision_t *revision,
                              svn_depth_t depth,
                              svn_boolean_t ignore_externals,
                              svn_boolean_t allow_unver_obstructions,
                              svn_ra_session_t *ra_session,
                              svn_client_ctx_t *ctx,
                              apr_pool_t *scratch_pool)
{
  svn_node_kind_t kind;
  svn_client__pathrev_t *pathrev;
  svn_opt_revision_t resolved_rev = { svn_opt_revision_number };


  SVN_ERR_ASSERT(local_abspath != ((void*)0));
  SVN_ERR_ASSERT(svn_uri_is_canonical(url, scratch_pool));
  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));


  if ((revision->kind != svn_opt_revision_number)
      && (revision->kind != svn_opt_revision_date)
      && (revision->kind != svn_opt_revision_head))
    return svn_error_create(SVN_ERR_CLIENT_BAD_REVISION, ((void*)0), ((void*)0));


  if (ra_session)
    {
      svn_error_t *err = svn_ra_reparent(ra_session, url, scratch_pool);

      if (err)
        {
          if (err->apr_err == SVN_ERR_RA_ILLEGAL_URL)
            {
              svn_error_clear(err);
              ra_session = ((void*)0);
            }
          else
            return svn_error_trace(err);
        }
      else
        {
          SVN_ERR(svn_client__resolve_rev_and_url(&pathrev,
                                                  ra_session, url,
                                                  peg_revision, revision,
                                                  ctx, scratch_pool));
        }
    }

  if (!ra_session)
    {
      SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &pathrev,
                                                url, ((void*)0), peg_revision,
                                                revision, ctx, scratch_pool));
    }

  SVN_ERR(svn_ra_check_path(ra_session, "", pathrev->rev, &kind, scratch_pool));
  resolved_rev.value.number = pathrev->rev;

  if (kind == svn_node_none)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("URL '%s' doesn't exist"), pathrev->url);
  else if (kind == svn_node_file)
    return svn_error_createf
      (SVN_ERR_UNSUPPORTED_FEATURE , ((void*)0),
       _("URL '%s' refers to a file, not a directory"), pathrev->url);

  SVN_ERR(svn_io_check_path(local_abspath, &kind, scratch_pool));

  if (kind == svn_node_none)
    {



      SVN_ERR(svn_io_make_dir_recursively(local_abspath, scratch_pool));
      SVN_ERR(initialize_area(local_abspath, pathrev, depth, ctx,
                              scratch_pool));
    }
  else if (kind == svn_node_dir)
    {
      int wc_format;
      const char *entry_url;

      SVN_ERR(svn_wc_check_wc2(&wc_format, ctx->wc_ctx, local_abspath,
                               scratch_pool));

      if (! wc_format)
        {
          SVN_ERR(initialize_area(local_abspath, pathrev, depth, ctx,
                                  scratch_pool));
        }
      else
        {

          SVN_ERR(svn_wc__node_get_url(&entry_url, ctx->wc_ctx, local_abspath,
                                       scratch_pool, scratch_pool));




          if (strcmp(entry_url, pathrev->url) != 0)
            return svn_error_createf(
                          SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
                          _("'%s' is already a working copy for a"
                            " different URL"),
                          svn_dirent_local_style(local_abspath, scratch_pool));
        }
    }
  else
    {
      return svn_error_createf(SVN_ERR_WC_NODE_KIND_CHANGE, ((void*)0),
                               _("'%s' already exists and is not a directory"),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }


  SVN_ERR(svn_client__update_internal(result_rev, timestamp_sleep,
                                      local_abspath, &resolved_rev, depth,
                                      TRUE, ignore_externals,
                                      allow_unver_obstructions,
                                      TRUE ,
                                      FALSE, FALSE, ra_session,
                                      ctx, scratch_pool));

  return SVN_NO_ERROR;
}
