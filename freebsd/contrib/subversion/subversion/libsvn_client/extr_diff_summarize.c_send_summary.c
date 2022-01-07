
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_node_kind_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int node_kind; scalar_t__ prop_changed; scalar_t__ summarize_kind; int path; } ;
typedef TYPE_1__ svn_client_diff_summarize_t ;
typedef scalar_t__ svn_client_diff_summarize_kind_t ;
typedef scalar_t__ svn_boolean_t ;
struct summarize_baton_t {int summarize_func_baton; int (* summarize_func ) (TYPE_1__*,int ,int *) ;int skip_relpath; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int stub1 (TYPE_1__*,int ,int *) ;
 scalar_t__ svn_client_diff_summarize_kind_modified ;
 scalar_t__ svn_client_diff_summarize_kind_normal ;
 int svn_relpath_skip_ancestor (int ,char const*) ;

__attribute__((used)) static svn_error_t *
send_summary(struct summarize_baton_t *b,
             const char *path,
             svn_client_diff_summarize_kind_t summarize_kind,
             svn_boolean_t prop_changed,
             svn_node_kind_t node_kind,
             apr_pool_t *scratch_pool)
{
  svn_client_diff_summarize_t *sum = apr_pcalloc(scratch_pool, sizeof(*sum));

  SVN_ERR_ASSERT(summarize_kind != svn_client_diff_summarize_kind_normal
                 || prop_changed);



  sum->path = svn_relpath_skip_ancestor(b->skip_relpath, path);
  sum->summarize_kind = summarize_kind;
  if (summarize_kind == svn_client_diff_summarize_kind_modified
      || summarize_kind == svn_client_diff_summarize_kind_normal)
    sum->prop_changed = prop_changed;
  sum->node_kind = node_kind;

  SVN_ERR(b->summarize_func(sum, b->summarize_func_baton, scratch_pool));
  return SVN_NO_ERROR;
}
