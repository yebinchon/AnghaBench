
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef void* svn_boolean_t ;
struct edit_baton_t {int * pool; void* cancel_baton; int cancel_func; void* diff_pristine; void* local_before_remote; void* ignore_ancestry; int depth; int const* processor; void* target; void* anchor_abspath; int * db; } ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 struct edit_baton_t* apr_pcalloc (int *,int) ;
 void* apr_pstrdup (int *,char const*) ;
 int svn_dirent_is_absolute (char const*) ;

__attribute__((used)) static svn_error_t *
make_edit_baton(struct edit_baton_t **edit_baton,
                svn_wc__db_t *db,
                const char *anchor_abspath,
                const char *target,
                const svn_diff_tree_processor_t *diff_processor,
                svn_depth_t depth,
                svn_boolean_t ignore_ancestry,
                svn_boolean_t use_text_base,
                svn_boolean_t reverse_order,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *pool)
{
  struct edit_baton_t *eb;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(anchor_abspath));

  eb = apr_pcalloc(pool, sizeof(*eb));
  eb->db = db;
  eb->anchor_abspath = apr_pstrdup(pool, anchor_abspath);
  eb->target = apr_pstrdup(pool, target);
  eb->processor = diff_processor;
  eb->depth = depth;
  eb->ignore_ancestry = ignore_ancestry;
  eb->local_before_remote = reverse_order;
  eb->diff_pristine = use_text_base;
  eb->cancel_func = cancel_func;
  eb->cancel_baton = cancel_baton;
  eb->pool = pool;

  *edit_baton = eb;
  return SVN_NO_ERROR;
}
