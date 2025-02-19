
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int callback_baton; TYPE_1__* callbacks; } ;
typedef TYPE_2__ wc_diff_wrap_baton_t ;
typedef int svn_wc_notify_state_t ;
typedef int svn_error_t ;
struct TYPE_7__ {TYPE_2__* baton; } ;
typedef TYPE_3__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_5__ {int (* dir_closed ) (int *,int *,int *,char const*,int ,int ,int *) ;int (* dir_props_changed ) (int *,int *,char const*,int ,int *,int *,int ,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_make (int *) ;
 int stub1 (int *,int *,char const*,int ,int *,int *,int ,int *) ;
 int stub2 (int *,int *,int *,char const*,int ,int ,int *) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;
 int svn_wc_notify_state_unknown ;

__attribute__((used)) static svn_error_t *
wrap_dir_added(const char *relpath,
               const svn_diff_source_t *copyfrom_source,
               const svn_diff_source_t *right_source,
                         apr_hash_t *copyfrom_props,
                         apr_hash_t *right_props,
               void *dir_baton,
               const svn_diff_tree_processor_t *processor,
               apr_pool_t *scratch_pool)
{
  wc_diff_wrap_baton_t *wb = processor->baton;
  svn_boolean_t tree_conflicted = FALSE;
  svn_wc_notify_state_t state = svn_wc_notify_state_unknown;
  svn_wc_notify_state_t prop_state = svn_wc_notify_state_unknown;
  apr_hash_t *pristine_props = copyfrom_props;
  apr_array_header_t *prop_changes = ((void*)0);

  if (right_props && apr_hash_count(right_props))
    {
      if (!pristine_props)
        pristine_props = apr_hash_make(scratch_pool);

      SVN_ERR(svn_prop_diffs(&prop_changes, right_props, pristine_props,
                             scratch_pool));

      SVN_ERR(wb->callbacks->dir_props_changed(&prop_state,
                                               &tree_conflicted,
                                               relpath,
                                               TRUE ,
                                               prop_changes, pristine_props,
                                               wb->callback_baton,
                                               scratch_pool));
    }

  SVN_ERR(wb->callbacks->dir_closed(&state, &prop_state,
                                   &tree_conflicted,
                                   relpath,
                                   TRUE ,
                                   wb->callback_baton,
                                   scratch_pool));
  return SVN_NO_ERROR;
}
