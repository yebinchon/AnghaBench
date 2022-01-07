
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int callback_baton; TYPE_1__* callbacks; } ;
typedef TYPE_2__ wc_diff_wrap_baton_t ;
typedef int svn_wc_notify_state_t ;
typedef int svn_error_t ;
typedef int svn_diff_source_t ;
typedef int svn_boolean_t ;
struct svn_diff_tree_processor_t {TYPE_2__* baton; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_3__ {int (* dir_props_changed ) (int *,int *,char const*,int ,int const*,int *,int ,int *) ;} ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert (int) ;
 int stub1 (int *,int *,char const*,int ,int const*,int *,int ,int *) ;
 int svn_wc_notify_state_inapplicable ;
 int wrap_dir_closed (char const*,int const*,int const*,void*,struct svn_diff_tree_processor_t const*,int *) ;

__attribute__((used)) static svn_error_t *
wrap_dir_changed(const char *relpath,
                 const svn_diff_source_t *left_source,
                 const svn_diff_source_t *right_source,
                           apr_hash_t *left_props,
                           apr_hash_t *right_props,
                 const apr_array_header_t *prop_changes,
                 void *dir_baton,
                 const struct svn_diff_tree_processor_t *processor,
                 apr_pool_t *scratch_pool)
{
  wc_diff_wrap_baton_t *wb = processor->baton;
  svn_boolean_t tree_conflicted = FALSE;
  svn_wc_notify_state_t prop_state = svn_wc_notify_state_inapplicable;

  assert(left_source && right_source);

  SVN_ERR(wb->callbacks->dir_props_changed(&prop_state, &tree_conflicted,
                                           relpath,
                                           FALSE ,
                                           prop_changes,
                                           left_props,
                                           wb->callback_baton,
                                           scratch_pool));


  SVN_ERR(wrap_dir_closed(relpath, left_source, right_source,
                          dir_baton, processor,
                          scratch_pool));
  return SVN_NO_ERROR;
}
