
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_8__ {int change_dir_prop; int change_file_prop; int close_file; int apply_textdelta; int add_file; int add_directory; int open_root; int set_target_revision; } ;
typedef TYPE_1__ svn_delta_editor_t ;
struct TYPE_9__ {int cancel_baton; int cancel_func; } ;
typedef TYPE_2__ svn_client_ctx_t ;
struct edit_baton {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_file ;
 int open_root ;
 int set_target_revision ;
 TYPE_1__* svn_delta_default_editor (int *) ;
 int svn_delta_get_cancellation_editor (int ,int ,TYPE_1__*,struct edit_baton*,TYPE_1__ const**,void**,int *) ;

__attribute__((used)) static svn_error_t *
get_editor_ev1(const svn_delta_editor_t **export_editor,
               void **edit_baton,
               struct edit_baton *eb,
               svn_client_ctx_t *ctx,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  svn_delta_editor_t *editor = svn_delta_default_editor(result_pool);

  editor->set_target_revision = set_target_revision;
  editor->open_root = open_root;
  editor->add_directory = add_directory;
  editor->add_file = add_file;
  editor->apply_textdelta = apply_textdelta;
  editor->close_file = close_file;
  editor->change_file_prop = change_file_prop;
  editor->change_dir_prop = change_dir_prop;

  SVN_ERR(svn_delta_get_cancellation_editor(ctx->cancel_func,
                                            ctx->cancel_baton,
                                            editor,
                                            eb,
                                            export_editor,
                                            edit_baton,
                                            result_pool));

  return SVN_NO_ERROR;
}
