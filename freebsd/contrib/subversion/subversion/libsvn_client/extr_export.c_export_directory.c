
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_ra_session_t ;
struct TYPE_10__ {int (* finish_report ) (void*,int *) ;int (* set_path ) (void*,char*,int ,int ,int ,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_reporter3_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
struct TYPE_11__ {int notify_baton2; int notify_func2; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct TYPE_12__ {int rev; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
struct edit_baton {int repos_root_url; int externals; } ;
typedef int apr_pool_t ;


 int ENABLE_EV2_IMPL ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_editor_ev1 (int const**,void**,struct edit_baton*,TYPE_2__*,int *,int *) ;
 int get_editor_ev2 (int const**,void**,struct edit_baton*,TYPE_2__*,int *,int *) ;
 int open_root_internal (char const*,int ,int ,int ,int *) ;
 int stub1 (void*,char*,int ,int ,int ,int *,int *) ;
 int stub2 (void*,int *) ;
 int svn_client__export_externals (int ,char const*,char const*,int ,int ,char const*,int ,TYPE_2__*,int *) ;
 int svn_depth_infinity ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 scalar_t__ svn_node_none ;
 int svn_path_is_url (char const*) ;
 int svn_ra_do_update3 (int *,TYPE_1__ const**,void**,int ,char*,int ,int ,int ,int const*,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *
export_directory(const char *from_url,
                 const char *to_path,
                 struct edit_baton *eb,
                 svn_client__pathrev_t *loc,
                 svn_ra_session_t *ra_session,
                 svn_boolean_t overwrite,
                 svn_boolean_t ignore_externals,
                 svn_boolean_t ignore_keywords,
                 svn_depth_t depth,
                 const char *native_eol,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *scratch_pool)
{
  void *edit_baton;
  const svn_delta_editor_t *export_editor;
  const svn_ra_reporter3_t *reporter;
  void *report_baton;
  svn_node_kind_t kind;

  SVN_ERR_ASSERT(svn_path_is_url(from_url));

  if (!ENABLE_EV2_IMPL)
    SVN_ERR(get_editor_ev1(&export_editor, &edit_baton, eb, ctx,
                           scratch_pool, scratch_pool));
  else
    SVN_ERR(get_editor_ev2(&export_editor, &edit_baton, eb, ctx,
                           scratch_pool, scratch_pool));


  SVN_ERR(svn_ra_do_update3(ra_session,
                            &reporter, &report_baton,
                            loc->rev,
                            "",
                            depth,
                            FALSE,
                            FALSE,
                            export_editor, edit_baton,
                            scratch_pool, scratch_pool));

  SVN_ERR(reporter->set_path(report_baton, "", loc->rev,


                             svn_depth_infinity,
                             TRUE,
                             ((void*)0), scratch_pool));

  SVN_ERR(reporter->finish_report(report_baton, scratch_pool));
  SVN_ERR(svn_io_check_path(to_path, &kind, scratch_pool));
  if (kind == svn_node_none)
    SVN_ERR(open_root_internal
            (to_path, overwrite, ctx->notify_func2,
             ctx->notify_baton2, scratch_pool));

  if (! ignore_externals && depth == svn_depth_infinity)
    {
      const char *to_abspath;

      SVN_ERR(svn_dirent_get_absolute(&to_abspath, to_path, scratch_pool));
      SVN_ERR(svn_client__export_externals(eb->externals,
                                           from_url,
                                           to_abspath, eb->repos_root_url,
                                           depth, native_eol,
                                           ignore_keywords,
                                           ctx, scratch_pool));
    }

  return SVN_NO_ERROR;
}
