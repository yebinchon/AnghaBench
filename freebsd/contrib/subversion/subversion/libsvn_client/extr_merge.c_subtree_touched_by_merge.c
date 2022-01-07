
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {int tree_conflicted_abspaths; int added_abspaths; int skipped_abspaths; int merged_abspaths; } ;
typedef TYPE_1__ merge_cmd_baton_t ;
typedef int apr_pool_t ;


 scalar_t__ path_is_subtree (char const*,int ,int *) ;

__attribute__((used)) static svn_boolean_t
subtree_touched_by_merge(const char *local_abspath,
                         merge_cmd_baton_t *merge_b,
                         apr_pool_t *pool)
{
  return (path_is_subtree(local_abspath, merge_b->merged_abspaths, pool)
          || path_is_subtree(local_abspath, merge_b->skipped_abspaths, pool)
          || path_is_subtree(local_abspath, merge_b->added_abspaths, pool)
          || path_is_subtree(local_abspath, merge_b->tree_conflicted_abspaths,
                             pool));
}
