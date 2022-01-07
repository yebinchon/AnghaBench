
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_editor_t ;
typedef int svn_delta_editor_t ;
struct TYPE_3__ {int cancel_baton; int cancel_func; } ;
typedef TYPE_1__ svn_client_ctx_t ;
typedef int svn_boolean_t ;
struct svn_delta__extra_baton {int target_revision; struct edit_baton* baton; } ;
struct edit_baton {int notify_baton; int notify_func; int force; int root_path; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int add_directory_ev2 ;
 int add_file_ev2 ;
 int * apr_palloc (int *,int) ;
 struct svn_delta__extra_baton* apr_pcalloc (int *,int) ;
 int fetch_base_func ;
 int fetch_props_func ;
 int open_root_internal (int ,int ,int ,int ,int *) ;
 int svn_delta__delta_from_editor (int const**,void**,int *,int *,int *,int *,int *,int *,int ,struct edit_baton*,int ,struct edit_baton*,struct svn_delta__extra_baton*,int *) ;
 int svn_editor_create (int **,struct edit_baton*,int ,int ,int *,int *) ;
 int svn_editor_setcb_add_directory (int *,int ,int *) ;
 int svn_editor_setcb_add_file (int *,int ,int *) ;
 int target_revision_func ;

__attribute__((used)) static svn_error_t *
get_editor_ev2(const svn_delta_editor_t **export_editor,
               void **edit_baton,
               struct edit_baton *eb,
               svn_client_ctx_t *ctx,
               apr_pool_t *result_pool,
               apr_pool_t *scratch_pool)
{
  svn_editor_t *editor;
  struct svn_delta__extra_baton *exb = apr_pcalloc(result_pool, sizeof(*exb));
  svn_boolean_t *found_abs_paths = apr_palloc(result_pool,
                                              sizeof(*found_abs_paths));

  exb->baton = eb;
  exb->target_revision = target_revision_func;

  SVN_ERR(svn_editor_create(&editor, eb, ctx->cancel_func, ctx->cancel_baton,
                            result_pool, scratch_pool));
  SVN_ERR(svn_editor_setcb_add_directory(editor, add_directory_ev2,
                                         scratch_pool));
  SVN_ERR(svn_editor_setcb_add_file(editor, add_file_ev2, scratch_pool));

  *found_abs_paths = TRUE;

  SVN_ERR(svn_delta__delta_from_editor(export_editor, edit_baton,
                                       editor, ((void*)0), ((void*)0), found_abs_paths,
                                       ((void*)0), ((void*)0),
                                       fetch_props_func, eb,
                                       fetch_base_func, eb,
                                       exb, result_pool));


  SVN_ERR(open_root_internal(eb->root_path, eb->force, eb->notify_func,
                             eb->notify_baton, scratch_pool));

  return SVN_NO_ERROR;
}
