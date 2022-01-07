
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
struct TYPE_5__ {char const* parent_relpath; int tree_conflict_data; int local_relpath; int wc_id; } ;
typedef TYPE_1__ db_actual_node_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 TYPE_1__* MAYBE_ALLOC (TYPE_1__*,int *) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this_key (int *) ;
 int apr_hash_this_val (int *) ;
 int insert_actual_node (int *,int *,char const*,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
write_actual_only_entries(apr_hash_t *tree_conflicts,
                          svn_sqlite__db_t *sdb,
                          svn_wc__db_t *db,
                          const char *wri_abspath,
                          apr_int64_t wc_id,
                          const char *parent_relpath,
                          apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;

  for (hi = apr_hash_first(scratch_pool, tree_conflicts);
       hi;
       hi = apr_hash_next(hi))
    {
      db_actual_node_t *actual_node = ((void*)0);

      actual_node = MAYBE_ALLOC(actual_node, scratch_pool);
      actual_node->wc_id = wc_id;
      actual_node->local_relpath = apr_hash_this_key(hi);
      actual_node->parent_relpath = parent_relpath;
      actual_node->tree_conflict_data = apr_hash_this_val(hi);

      SVN_ERR(insert_actual_node(sdb, db, wri_abspath, actual_node,
                                 scratch_pool));
    }

  return SVN_NO_ERROR;
}
