
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_context_t ;
typedef int svn_ra_session_t ;
struct TYPE_10__ {int (* finish_report ) (void*,int *) ;int (* set_path ) (void*,char*,int ,int ,int ,int *,int *) ;} ;
typedef TYPE_1__ svn_ra_reporter3_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_11__ {int close_file; int apply_textdelta; int change_file_prop; int add_file; int close_directory; int change_dir_prop; int add_directory; int close_edit; int open_root; } ;
typedef TYPE_2__ svn_delta_editor_t ;
struct TYPE_12__ {int rev; } ;
typedef TYPE_3__ svn_client__pathrev_t ;
typedef int svn_cancel_func_t ;
struct edit_baton_t {char const* anchor_abspath; void* notify_baton; int notify_func; int * wc_ctx; int * pool; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int dir_add ;
 int dir_change_prop ;
 int dir_close ;
 int edit_close ;
 int edit_open ;
 int file_add ;
 int file_change_prop ;
 int file_close ;
 int file_textdelta ;
 int stub1 (void*,char*,int ,int ,int ,int *,int *) ;
 int stub2 (void*,int *) ;
 TYPE_2__* svn_delta_default_editor (int *) ;
 int svn_delta_get_cancellation_editor (int ,void*,TYPE_2__*,struct edit_baton_t*,TYPE_2__ const**,void**,int *) ;
 int svn_depth_infinity ;
 int svn_ra_do_update3 (int *,TYPE_1__ const**,void**,int ,char*,int ,int ,int ,TYPE_2__ const*,void*,int *,int *) ;

__attribute__((used)) static svn_error_t *
copy_foreign_dir(svn_ra_session_t *ra_session,
                 svn_client__pathrev_t *location,
                 svn_wc_context_t *wc_ctx,
                 const char *dst_abspath,
                 svn_depth_t depth,
                 svn_wc_notify_func2_t notify_func,
                 void *notify_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  struct edit_baton_t eb;
  svn_delta_editor_t *editor = svn_delta_default_editor(scratch_pool);
  const svn_delta_editor_t *wrapped_editor;
  void *wrapped_baton;
  const svn_ra_reporter3_t *reporter;
  void *reporter_baton;

  eb.pool = scratch_pool;
  eb.anchor_abspath = dst_abspath;

  eb.wc_ctx = wc_ctx;
  eb.notify_func = notify_func;
  eb.notify_baton = notify_baton;

  editor->open_root = edit_open;
  editor->close_edit = edit_close;

  editor->add_directory = dir_add;
  editor->change_dir_prop = dir_change_prop;
  editor->close_directory = dir_close;

  editor->add_file = file_add;
  editor->change_file_prop = file_change_prop;
  editor->apply_textdelta = file_textdelta;
  editor->close_file = file_close;

  SVN_ERR(svn_delta_get_cancellation_editor(cancel_func, cancel_baton,
                                            editor, &eb,
                                            &wrapped_editor, &wrapped_baton,
                                            scratch_pool));

  SVN_ERR(svn_ra_do_update3(ra_session, &reporter, &reporter_baton,
                            location->rev, "", svn_depth_infinity,
                            FALSE, FALSE, wrapped_editor, wrapped_baton,
                            scratch_pool, scratch_pool));

  SVN_ERR(reporter->set_path(reporter_baton, "", location->rev, depth,
                             TRUE ,
                             ((void*)0), scratch_pool));

  SVN_ERR(reporter->finish_report(reporter_baton, scratch_pool));

  return SVN_NO_ERROR;
}
