
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_31__ {int revision; int peg_revision; int url; } ;
typedef TYPE_1__ svn_wc_external_item2_t ;
typedef int svn_ra_session_t ;
typedef int svn_node_kind_t ;
struct TYPE_32__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
struct TYPE_33__ {int wc_ctx; int notify_baton2; int (* notify_func2 ) (int ,int ,int *) ;} ;
typedef TYPE_3__ svn_client_ctx_t ;
struct TYPE_34__ {char const* url; char const* rev; int repos_uuid; int repos_root_url; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_MALFUNCTION () ;
 scalar_t__ SVN_ERR_RA_ILLEGAL_URL ;
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int strcmp (char const*,int ) ;
 int stub1 (int ,int ,int *) ;
 TYPE_2__* svn_client__ra_session_from_path2 (int **,TYPE_4__**,char const*,int *,int *,int *,TYPE_3__*,int *) ;
 TYPE_2__* svn_client__resolve_rev_and_url (TYPE_4__**,int *,char const*,int *,int *,TYPE_3__*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (scalar_t__,int *,int ,char const*,char const*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_io_make_dir_recursively (int ,int *) ;


 int svn_node_none ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 TYPE_2__* svn_ra_check_path (int *,char*,char const*,int*,int *) ;
 TYPE_2__* svn_ra_reparent (int *,char const*,int *) ;
 char* svn_uri_skip_ancestor (int ,char const*,int *) ;
 TYPE_2__* svn_wc__node_get_repos_info (int *,int *,char const**,char const**,int ,char const*,int *,int *) ;
 TYPE_2__* svn_wc__resolve_relative_external_url (char const**,TYPE_1__ const*,char const*,char const*,int *,int *) ;
 int svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_update_external ;
 TYPE_2__* switch_dir_external (char const*,char const*,int ,int *,int *,char const*,int *,int *,TYPE_3__*,int *) ;
 TYPE_2__* switch_file_external (char const*,TYPE_4__*,char const*,int *,int *,char const*,int *,TYPE_3__*,int *) ;

__attribute__((used)) static svn_error_t *
handle_external_item_change(svn_client_ctx_t *ctx,
                            const char *repos_root_url,
                            const char *parent_dir_abspath,
                            const char *parent_dir_url,
                            const char *local_abspath,
                            const char *old_defining_abspath,
                            const svn_wc_external_item2_t *new_item,
                            svn_ra_session_t *ra_session,
                            svn_boolean_t *timestamp_sleep,
                            apr_pool_t *scratch_pool)
{
  svn_client__pathrev_t *new_loc;
  const char *new_url;
  svn_node_kind_t ext_kind;

  SVN_ERR_ASSERT(repos_root_url && parent_dir_url);
  SVN_ERR_ASSERT(new_item != ((void*)0));
  SVN_ERR(svn_wc__resolve_relative_external_url(&new_url,
                                                new_item, repos_root_url,
                                                parent_dir_url,
                                                scratch_pool, scratch_pool));



  if (ra_session)
    {
      svn_error_t *err = svn_ra_reparent(ra_session, new_url, scratch_pool);

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
          SVN_ERR(svn_client__resolve_rev_and_url(&new_loc,
                                                  ra_session, new_url,
                                                  &(new_item->peg_revision),
                                                  &(new_item->revision), ctx,
                                                  scratch_pool));

          SVN_ERR(svn_ra_reparent(ra_session, new_loc->url, scratch_pool));
        }
    }

  if (!ra_session)
    SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &new_loc,
                                              new_url, ((void*)0),
                                              &(new_item->peg_revision),
                                              &(new_item->revision), ctx,
                                              scratch_pool));

  SVN_ERR(svn_ra_check_path(ra_session, "", new_loc->rev, &ext_kind,
                            scratch_pool));

  if (svn_node_none == ext_kind)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("URL '%s' at revision %ld doesn't exist"),
                             new_loc->url, new_loc->rev);

  if (129 != ext_kind && 128 != ext_kind)
    return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                             _("URL '%s' at revision %ld is not a file "
                               "or a directory"),
                             new_loc->url, new_loc->rev);







  if (ctx->notify_func2)
    {
      ctx->notify_func2(
         ctx->notify_baton2,
         svn_wc_create_notify(local_abspath,
                              svn_wc_notify_update_external,
                              scratch_pool),
         scratch_pool);
    }

  if (! old_defining_abspath)
    {


      SVN_ERR(svn_io_make_dir_recursively(svn_dirent_dirname(local_abspath,
                                                             scratch_pool),
                                          scratch_pool));
    }

  switch (ext_kind)
    {
      case 129:
        SVN_ERR(switch_dir_external(local_abspath, new_loc->url,
                                    new_item->url,
                                    &(new_item->peg_revision),
                                    &(new_item->revision),
                                    parent_dir_abspath,
                                    timestamp_sleep, ra_session, ctx,
                                    scratch_pool));
        break;
      case 128:
        if (strcmp(repos_root_url, new_loc->repos_root_url))
          {
            const char *local_repos_root_url;
            const char *local_repos_uuid;
            const char *ext_repos_relpath;
            svn_error_t *err;
            err = svn_wc__node_get_repos_info(((void*)0), ((void*)0),
                                              &local_repos_root_url,
                                              &local_repos_uuid,
                                              ctx->wc_ctx, parent_dir_abspath,
                                              scratch_pool, scratch_pool);
            if (err)
              {
                if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
                    && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
                  return svn_error_trace(err);

                svn_error_clear(err);
                local_repos_root_url = ((void*)0);
                local_repos_uuid = ((void*)0);
              }

            ext_repos_relpath = svn_uri_skip_ancestor(new_loc->repos_root_url,
                                                      new_url, scratch_pool);
            if (local_repos_uuid == ((void*)0) || local_repos_root_url == ((void*)0) ||
                ext_repos_relpath == ((void*)0) ||
                strcmp(local_repos_uuid, new_loc->repos_uuid) != 0)
              return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
                        _("Unsupported external: URL of file external '%s' "
                          "is not in repository '%s'"),
                        new_url, repos_root_url);

            new_url = svn_path_url_add_component2(local_repos_root_url,
                                                  ext_repos_relpath,
                                                  scratch_pool);
            SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &new_loc,
                                                      new_url,
                                                      ((void*)0),
                                                      &(new_item->peg_revision),
                                                      &(new_item->revision),
                                                      ctx, scratch_pool));
          }

        SVN_ERR(switch_file_external(local_abspath,
                                     new_loc,
                                     new_url,
                                     &new_item->peg_revision,
                                     &new_item->revision,
                                     parent_dir_abspath,
                                     ra_session,
                                     ctx,
                                     scratch_pool));
        break;

      default:
        SVN_ERR_MALFUNCTION();
        break;
    }

  return SVN_NO_ERROR;
}
