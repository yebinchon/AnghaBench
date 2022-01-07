
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int callback_baton; TYPE_1__* callbacks; } ;
typedef TYPE_2__ wc_diff_wrap_baton_t ;
typedef int svn_wc_notify_state_t ;
typedef int svn_error_t ;
struct TYPE_11__ {TYPE_2__* baton; } ;
typedef TYPE_3__ svn_diff_tree_processor_t ;
struct TYPE_12__ {int revision; } ;
typedef TYPE_4__ svn_diff_source_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_9__ {int (* file_changed ) (int *,int *,scalar_t__*,char const*,char const*,char const*,int ,int ,int *,int *,int const*,int *,int ,int *) ;} ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_MIME_TYPE ;
 int assert (int) ;
 int stub1 (int *,int *,scalar_t__*,char const*,char const*,char const*,int ,int ,int *,int *,int const*,int *,int ,int *) ;
 int * svn_prop_get_value (int *,int ) ;
 int svn_wc_notify_state_inapplicable ;
 int wrap_ensure_empty_file (TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
wrap_file_changed(const char *relpath,
                  const svn_diff_source_t *left_source,
                  const svn_diff_source_t *right_source,
                  const char *left_file,
                  const char *right_file,
                            apr_hash_t *left_props,
                            apr_hash_t *right_props,
                  svn_boolean_t file_modified,
                  const apr_array_header_t *prop_changes,
                  void *file_baton,
                  const svn_diff_tree_processor_t *processor,
                  apr_pool_t *scratch_pool)
{
  wc_diff_wrap_baton_t *wb = processor->baton;
  svn_boolean_t tree_conflicted = FALSE;
  svn_wc_notify_state_t state = svn_wc_notify_state_inapplicable;
  svn_wc_notify_state_t prop_state = svn_wc_notify_state_inapplicable;

  SVN_ERR(wrap_ensure_empty_file(wb, scratch_pool));

  assert(left_source && right_source);

  SVN_ERR(wb->callbacks->file_changed(&state, &prop_state, &tree_conflicted,
                                      relpath,
                                      file_modified ? left_file : ((void*)0),
                                      file_modified ? right_file : ((void*)0),
                                      left_source->revision,
                                      right_source->revision,
                                      left_props
                                       ? svn_prop_get_value(left_props,
                                                            SVN_PROP_MIME_TYPE)
                                       : ((void*)0),
                                      right_props
                                       ? svn_prop_get_value(right_props,
                                                            SVN_PROP_MIME_TYPE)
                                       : ((void*)0),
                                       prop_changes,
                                      left_props,
                                      wb->callback_baton,
                                      scratch_pool));
  return SVN_NO_ERROR;
}
