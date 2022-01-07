
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int name; } ;
typedef TYPE_1__ const svn_wc_entry_t ;
struct TYPE_10__ {int * (* handle_error ) (char const*,int *,void*,int *) ;int * (* found_entry ) (char const*,TYPE_1__ const*,void*,int *) ;} ;
typedef TYPE_2__ svn_wc_entry_callbacks2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int * (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int *) ;
 int SVN_ERR_ENTRY_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int SVN_WC_ENTRY_THIS_DIR ;
 int _ (char*) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_1__ const* apr_hash_this_val (int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int * stub1 (char const*,int *,void*,int *) ;
 int * stub2 (char const*,int *,void*,int *) ;
 int * stub3 (char const*,TYPE_1__ const*,void*,int *) ;
 int * stub4 (char const*,int *,void*,int *) ;
 int * stub5 (char const*,TYPE_1__ const*,void*,int *) ;
 int * stub6 (char const*,int *,void*,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_immediates ;
 int * svn_dirent_get_absolute (char const**,char const*,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 TYPE_1__ const* svn_hash_gets (int *,int ) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_wc__adm_get_db (int *) ;
 int * svn_wc__adm_retrieve_internal2 (int *,char const*,int *) ;
 int * svn_wc__entries_read_internal (int **,int *,int ,int *) ;
 int * svn_wc__entry_is_hidden (int *,TYPE_1__ const*) ;

__attribute__((used)) static svn_error_t *
walker_helper(const char *dirpath,
              svn_wc_adm_access_t *adm_access,
              const svn_wc_entry_callbacks2_t *walk_callbacks,
              void *walk_baton,
              svn_depth_t depth,
              svn_boolean_t show_hidden,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *pool)
{
  apr_pool_t *subpool = svn_pool_create(pool);
  apr_hash_t *entries;
  apr_hash_index_t *hi;
  svn_wc_entry_t *dot_entry;
  svn_error_t *err;
  svn_wc__db_t *db = svn_wc__adm_get_db(adm_access);

  err = svn_wc__entries_read_internal(&entries, adm_access, show_hidden,
                                      pool);

  if (err)
    SVN_ERR(walk_callbacks->handle_error(dirpath, err, walk_baton, pool));


  dot_entry = svn_hash_gets(entries, SVN_WC_ENTRY_THIS_DIR);
  if (! dot_entry)
    return walk_callbacks->handle_error
      (dirpath, svn_error_createf(SVN_ERR_ENTRY_NOT_FOUND, ((void*)0),
                                  _("Directory '%s' has no THIS_DIR entry"),
                                  svn_dirent_local_style(dirpath, pool)),
       walk_baton, pool);






  err = walk_callbacks->found_entry(dirpath, dot_entry, walk_baton, subpool);


  if(err)
    SVN_ERR(walk_callbacks->handle_error(dirpath, err, walk_baton, pool));

  if (depth == svn_depth_empty)
    return SVN_NO_ERROR;


  for (hi = apr_hash_first(pool, entries); hi; hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);
      const svn_wc_entry_t *current_entry = apr_hash_this_val(hi);
      const char *entrypath;
      const char *entry_abspath;
      svn_boolean_t hidden;

      svn_pool_clear(subpool);


      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));


      if (strcmp(current_entry->name, SVN_WC_ENTRY_THIS_DIR) == 0)
        continue;

      entrypath = svn_dirent_join(dirpath, name, subpool);
      SVN_ERR(svn_wc__entry_is_hidden(&hidden, current_entry));
      SVN_ERR(svn_dirent_get_absolute(&entry_abspath, entrypath, subpool));



      if (current_entry->kind == svn_node_file
          || depth >= svn_depth_immediates)
        {
          err = walk_callbacks->found_entry(entrypath, current_entry,
                                            walk_baton, subpool);

          if (err)
            SVN_ERR(walk_callbacks->handle_error(entrypath, err,
                                                 walk_baton, pool));
        }


      if (current_entry->kind == svn_node_dir
          && !hidden
          && depth >= svn_depth_immediates)
        {
          svn_wc_adm_access_t *entry_access;
          svn_depth_t depth_below_here = depth;

          if (depth == svn_depth_immediates)
            depth_below_here = svn_depth_empty;

          entry_access = svn_wc__adm_retrieve_internal2(db, entry_abspath,
                                                        subpool);

          if (entry_access)
            SVN_ERR(walker_helper(entrypath, entry_access,
                                  walk_callbacks, walk_baton,
                                  depth_below_here, show_hidden,
                                  cancel_func, cancel_baton,
                                  subpool));
        }
    }

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
