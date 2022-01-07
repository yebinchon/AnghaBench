
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int * (* svn_cancel_func_t ) (void*) ;
struct svn_wc__db_info_t {scalar_t__ kind; scalar_t__ conflicted; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 struct svn_wc__db_info_t* apr_hash_this_val (int *) ;
 int * remove_node_conflict_markers (int *,char*,char*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_wc__db_read_children_info (int **,int **,int *,char const*,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
remove_all_conflict_markers(svn_wc__db_t *db,
                            const char *src_dir_abspath,
                            const char *dst_dir_abspath,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_t *nodes;
  apr_hash_t *conflicts;
  apr_hash_index_t *hi;





  SVN_ERR(svn_wc__db_read_children_info(&nodes, &conflicts, db,
                                        src_dir_abspath,
                                        FALSE ,
                                        scratch_pool, iterpool));

  for (hi = apr_hash_first(scratch_pool, nodes);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);
      struct svn_wc__db_info_t *info = apr_hash_this_val(hi);

      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));

      if (info->conflicted)
        {
          svn_pool_clear(iterpool);
          SVN_ERR(remove_node_conflict_markers(
                            db,
                            svn_dirent_join(src_dir_abspath, name, iterpool),
                            svn_dirent_join(dst_dir_abspath, name, iterpool),
                            iterpool));
        }
      if (info->kind == svn_node_dir)
        {
          svn_pool_clear(iterpool);
          SVN_ERR(remove_all_conflict_markers(
                            db,
                            svn_dirent_join(src_dir_abspath, name, iterpool),
                            svn_dirent_join(dst_dir_abspath, name, iterpool),
                            cancel_func, cancel_baton,
                            iterpool));
        }
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
