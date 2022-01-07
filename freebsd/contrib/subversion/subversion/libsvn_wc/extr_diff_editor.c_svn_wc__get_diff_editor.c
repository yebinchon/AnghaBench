
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
struct TYPE_20__ {struct svn_wc__shim_fetch_baton_t* fetch_baton; int fetch_base_func; int fetch_props_func; int fetch_kind_func; } ;
typedef TYPE_2__ svn_delta_shim_callbacks_t ;
struct TYPE_21__ {int close_edit; int close_file; int change_dir_prop; int change_file_prop; int apply_textdelta; int open_file; int add_file; int close_directory; int open_directory; int add_directory; int delete_entry; int open_root; int set_target_revision; } ;
typedef TYPE_3__ svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct svn_wc__shim_fetch_baton_t {int fetch_base; int base_abspath; int db; } ;
struct edit_baton_t {int anchor_abspath; int pool; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_22__ {scalar_t__ nelts; } ;
typedef TYPE_4__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int add_directory ;
 int add_file ;
 int apply_textdelta ;
 struct svn_wc__shim_fetch_baton_t* apr_palloc (int *,int) ;
 int change_dir_prop ;
 int change_file_prop ;
 int close_directory ;
 int close_edit ;
 int close_file ;
 int delete_entry ;
 int make_edit_baton (struct edit_baton_t**,int ,char const*,char const*,int const*,int ,int ,int ,int ,int ,void*,int *) ;
 int open_directory ;
 int open_file ;
 int open_root ;
 int set_target_revision ;
 TYPE_3__* svn_delta_default_editor (int ) ;
 int svn_delta_get_cancellation_editor (int ,void*,TYPE_3__ const*,void*,TYPE_3__ const**,void**,int *) ;
 TYPE_2__* svn_delta_shim_callbacks_default (int *) ;
 int svn_depth_unknown ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_editor__insert_shims (TYPE_3__ const**,void**,TYPE_3__ const*,void*,int *,int *,TYPE_2__*,int *,int *) ;
 int svn_hash_from_cstring_keys (int **,TYPE_4__ const*,int *) ;
 int svn_wc__ambient_depth_filter_editor (TYPE_3__ const**,void**,int ,char const*,char const*,TYPE_3__ const*,void*,int *) ;
 int * svn_wc__changelist_filter_tree_processor_create (int const*,TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__fetch_base_func ;
 int svn_wc__fetch_kind_func ;
 int svn_wc__fetch_props_func ;

svn_error_t *
svn_wc__get_diff_editor(const svn_delta_editor_t **editor,
                        void **edit_baton,
                        svn_wc_context_t *wc_ctx,
                        const char *anchor_abspath,
                        const char *target,
                        svn_depth_t depth,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t use_text_base,
                        svn_boolean_t reverse_order,
                        svn_boolean_t server_performs_filtering,
                        const apr_array_header_t *changelist_filter,
                        const svn_diff_tree_processor_t *diff_processor,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  struct edit_baton_t *eb;
  void *inner_baton;
  svn_delta_editor_t *tree_editor;
  const svn_delta_editor_t *inner_editor;
  struct svn_wc__shim_fetch_baton_t *sfb;
  svn_delta_shim_callbacks_t *shim_callbacks =
                                svn_delta_shim_callbacks_default(result_pool);

  SVN_ERR_ASSERT(svn_dirent_is_absolute(anchor_abspath));


  if (changelist_filter && changelist_filter->nelts)
    {
      apr_hash_t *changelist_hash;

      SVN_ERR(svn_hash_from_cstring_keys(&changelist_hash, changelist_filter,
                                         result_pool));
      diff_processor = svn_wc__changelist_filter_tree_processor_create(
                         diff_processor, wc_ctx, anchor_abspath,
                         changelist_hash, result_pool);
    }

  SVN_ERR(make_edit_baton(&eb,
                          wc_ctx->db,
                          anchor_abspath, target,
                          diff_processor,
                          depth, ignore_ancestry,
                          use_text_base, reverse_order,
                          cancel_func, cancel_baton,
                          result_pool));

  tree_editor = svn_delta_default_editor(eb->pool);

  tree_editor->set_target_revision = set_target_revision;
  tree_editor->open_root = open_root;
  tree_editor->delete_entry = delete_entry;
  tree_editor->add_directory = add_directory;
  tree_editor->open_directory = open_directory;
  tree_editor->close_directory = close_directory;
  tree_editor->add_file = add_file;
  tree_editor->open_file = open_file;
  tree_editor->apply_textdelta = apply_textdelta;
  tree_editor->change_file_prop = change_file_prop;
  tree_editor->change_dir_prop = change_dir_prop;
  tree_editor->close_file = close_file;
  tree_editor->close_edit = close_edit;

  inner_editor = tree_editor;
  inner_baton = eb;

  if (!server_performs_filtering
      && depth == svn_depth_unknown)
    SVN_ERR(svn_wc__ambient_depth_filter_editor(&inner_editor,
                                                &inner_baton,
                                                wc_ctx->db,
                                                anchor_abspath,
                                                target,
                                                inner_editor,
                                                inner_baton,
                                                result_pool));

  SVN_ERR(svn_delta_get_cancellation_editor(cancel_func,
                                            cancel_baton,
                                            inner_editor,
                                            inner_baton,
                                            editor,
                                            edit_baton,
                                            result_pool));

  sfb = apr_palloc(result_pool, sizeof(*sfb));
  sfb->db = wc_ctx->db;
  sfb->base_abspath = eb->anchor_abspath;
  sfb->fetch_base = TRUE;

  shim_callbacks->fetch_kind_func = svn_wc__fetch_kind_func;
  shim_callbacks->fetch_props_func = svn_wc__fetch_props_func;
  shim_callbacks->fetch_base_func = svn_wc__fetch_base_func;
  shim_callbacks->fetch_baton = sfb;


  SVN_ERR(svn_editor__insert_shims(editor, edit_baton, *editor, *edit_baton,
                                   ((void*)0), ((void*)0), shim_callbacks,
                                   result_pool, scratch_pool));

  return SVN_NO_ERROR;
}
