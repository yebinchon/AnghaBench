
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
struct TYPE_20__ {int (* finish_report ) (void*,int *) ;int (* set_path ) (void*,char*,int ,int ,int ,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_reporter3_t ;
struct TYPE_21__ {scalar_t__ kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_22__ {int change_dir_prop; int change_file_prop; int close_file; int apply_textdelta; int add_file; int add_directory; int open_root; int set_target_revision; } ;
typedef TYPE_3__ svn_delta_editor_t ;
struct TYPE_23__ {int cancel_baton; int cancel_func; } ;
typedef TYPE_4__ svn_client_ctx_t ;
struct TYPE_24__ {int rev; int repos_root_url; } ;
typedef TYPE_5__ svn_client__pathrev_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_25__ {int dir_count; int file_count; } ;
typedef TYPE_6__ edit_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC (scalar_t__) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_RA_ILLEGAL_URL ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_file ;
 int file_write_handler ;
 int open_root ;
 int set_target_revision ;
 scalar_t__ strncmp (int ,char*,int) ;
 int stub1 (void*,char*,int ,int ,int ,int *,int *) ;
 int stub2 (void*,int *) ;
 int svn_client__ra_session_from_path2 (int **,TYPE_5__**,char const*,int *,TYPE_2__*,TYPE_2__*,TYPE_4__*,int *) ;
 TYPE_3__* svn_delta_default_editor (int *) ;
 int svn_delta_get_cancellation_editor (int ,int ,TYPE_3__*,void*,TYPE_3__ const**,void**,int *) ;
 int svn_depth_infinity ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_opt_revision_head ;
 scalar_t__ svn_opt_revision_unspecified ;
 scalar_t__ svn_opt_revision_working ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_ra_check_path (int *,char*,int ,scalar_t__*,int *) ;
 int svn_ra_do_update3 (int *,TYPE_1__ const**,void**,int ,char*,int ,int ,int ,TYPE_3__ const*,void*,int *,int *) ;
 int svn_ra_get_file (int *,char*,int ,int *,int *,int **,int *) ;
 int * svn_stream_create (TYPE_6__*,int *) ;
 int svn_stream_set_write (int *,int ) ;

__attribute__((used)) static svn_error_t *
bench_null_export(svn_revnum_t *result_rev,
                  const char *from_path_or_url,
                  svn_opt_revision_t *peg_revision,
                  svn_opt_revision_t *revision,
                  svn_depth_t depth,
                  void *baton,
                  svn_client_ctx_t *ctx,
                  svn_boolean_t quiet,
                  apr_pool_t *pool)
{
  svn_revnum_t edit_revision = SVN_INVALID_REVNUM;
  svn_boolean_t from_is_url = svn_path_is_url(from_path_or_url);

  SVN_ERR_ASSERT(peg_revision != ((void*)0));
  SVN_ERR_ASSERT(revision != ((void*)0));

  if (peg_revision->kind == svn_opt_revision_unspecified)
    peg_revision->kind = svn_path_is_url(from_path_or_url)
                       ? svn_opt_revision_head
                       : svn_opt_revision_working;

  if (revision->kind == svn_opt_revision_unspecified)
    revision = peg_revision;

  if (from_is_url || ! SVN_CLIENT__REVKIND_IS_LOCAL_TO_WC(revision->kind))
    {
      svn_client__pathrev_t *loc;
      svn_ra_session_t *ra_session;
      svn_node_kind_t kind;
      edit_baton_t *eb = baton;


      SVN_ERR(svn_client__ra_session_from_path2(&ra_session, &loc,
                                                from_path_or_url, ((void*)0),
                                                peg_revision,
                                                revision, ctx, pool));

      SVN_ERR(svn_ra_check_path(ra_session, "", loc->rev, &kind, pool));

      if (kind == svn_node_file)
        {
          apr_hash_t *props;


          svn_stream_t *stream = svn_stream_create(eb, pool);
          svn_stream_set_write(stream, file_write_handler);
          eb->file_count++;







          SVN_ERR(svn_ra_get_file(ra_session, "", loc->rev,
                                  stream, ((void*)0), &props, pool));
        }
      else if (kind == svn_node_dir)
        {
          void *edit_baton = ((void*)0);
          const svn_delta_editor_t *export_editor = ((void*)0);
          const svn_ra_reporter3_t *reporter;
          void *report_baton;

          svn_delta_editor_t *editor = svn_delta_default_editor(pool);

          editor->set_target_revision = set_target_revision;
          editor->open_root = open_root;
          editor->add_directory = add_directory;
          editor->add_file = add_file;
          editor->apply_textdelta = apply_textdelta;
          editor->close_file = close_file;
          editor->change_file_prop = change_file_prop;
          editor->change_dir_prop = change_dir_prop;


          if (!quiet || strncmp(loc->repos_root_url, "svn:", 4))
            SVN_ERR(svn_delta_get_cancellation_editor(ctx->cancel_func,
                                                      ctx->cancel_baton,
                                                      editor,
                                                      baton,
                                                      &export_editor,
                                                      &edit_baton,
                                                      pool));


          SVN_ERR(svn_ra_do_update3(ra_session,
                                    &reporter, &report_baton,
                                    loc->rev,
                                    "",
                                    depth,
                                    FALSE,
                                    FALSE,
                                    export_editor, edit_baton,
                                    pool, pool));

          SVN_ERR(reporter->set_path(report_baton, "", loc->rev,


                                     svn_depth_infinity,
                                     TRUE,
                                     ((void*)0), pool));

          SVN_ERR(reporter->finish_report(report_baton, pool));



          eb->dir_count++;
        }
      else if (kind == svn_node_none)
        {
          return svn_error_createf(SVN_ERR_RA_ILLEGAL_URL, ((void*)0),
                                   _("URL '%s' doesn't exist"),
                                   from_path_or_url);
        }

    }


  if (result_rev)
    *result_rev = edit_revision;

  return SVN_NO_ERROR;
}
