
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ svn_node_kind_t ;
struct TYPE_6__ {int changed_paths2; } ;
typedef TYPE_1__ svn_log_entry_t ;
struct TYPE_7__ {scalar_t__ node_kind; char action; } ;
typedef TYPE_2__ svn_log_changed_path2_t ;
typedef int svn_error_t ;
struct TYPE_8__ {scalar_t__ depth; int result_pool; int operative_children; int merge_target_abspath; int wc_ctx; int merge_source_fspath; } ;
typedef TYPE_3__ log_find_operative_subtree_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int ) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int apr_pstrdup (int ,char const*) ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 char* svn_dirent_join (int ,char const*,int *) ;
 char* svn_fspath__skip_ancestor (int ,char const*) ;
 int svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,int ,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_unknown ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_relpath_dirname (char const*,int *) ;
 int svn_wc_read_kind2 (scalar_t__*,int ,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
log_find_operative_subtree_revs(void *baton,
                                svn_log_entry_t *log_entry,
                                apr_pool_t *pool)
{
  log_find_operative_subtree_baton_t *log_baton = baton;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool;



  if (!log_entry->changed_paths2)
    return SVN_NO_ERROR;

  iterpool = svn_pool_create(pool);

  for (hi = apr_hash_first(pool, log_entry->changed_paths2);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *path = apr_hash_this_key(hi);
      svn_log_changed_path2_t *change = apr_hash_this_val(hi);

        {
          const char *child;
          const char *potential_child;
          const char *rel_path =
            svn_fspath__skip_ancestor(log_baton->merge_source_fspath, path);




          if (rel_path == ((void*)0)
              || rel_path[0] == '\0')
            continue;

          svn_pool_clear(iterpool);

          child = svn_relpath_dirname(rel_path, iterpool);
          if (child[0] == '\0')
            {






              svn_node_kind_t node_kind;

              if (change->node_kind == svn_node_unknown)
                {
                  const char *wc_child_abspath =
                    svn_dirent_join(log_baton->merge_target_abspath,
                                    rel_path, iterpool);

                  SVN_ERR(svn_wc_read_kind2(&node_kind, log_baton->wc_ctx,
                                            wc_child_abspath, FALSE, FALSE,
                                            iterpool));
                }
              else
                {
                  node_kind = change->node_kind;
                }



              if (log_baton->depth == svn_depth_files
                  && node_kind != svn_node_dir)
                continue;





              if (log_baton->depth == svn_depth_immediates)
                continue;

              child = rel_path;
            }

          potential_child = svn_dirent_join(log_baton->merge_target_abspath,
                                            child, iterpool);

          if (change->action == 'A'
              || !svn_hash_gets(log_baton->operative_children,
                                potential_child))
            {
              svn_hash_sets(log_baton->operative_children,
                            apr_pstrdup(log_baton->result_pool,
                                        potential_child),
                            apr_pstrdup(log_baton->result_pool, path));
            }
        }
    }
  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
