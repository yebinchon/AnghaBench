
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_hash_t ;


 int PROPS_SUBDIR ;
 int PROP_BASE_FOR_DIR ;
 int PROP_BASE_SUBDIR ;
 int PROP_REVERT_FOR_DIR ;
 int PROP_WORKING_FOR_DIR ;
 int SVN_ERR (int ) ;
 int SVN_VA_NULL ;
 int SVN_WC__BASE_EXT ;
 int SVN_WC__REVERT_EXT ;
 int SVN_WC__WORK_EXT ;
 int apr_pstrcat (int *,char const*,int ,int ) ;
 int read_propfile (int **,char const*,int *,int *) ;
 char* svn_dirent_get_longest_ancestor (char const*,char const*,int *) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_relpath_join (char const*,char const*,int *) ;
 char* svn_wc__adm_child (char const*,int ,int *) ;
 int upgrade_apply_props (int *,char const*,int ,int *,int *,int *,int,int ,int *) ;

__attribute__((used)) static svn_error_t *
migrate_node_props(const char *dir_abspath,
                   const char *new_wcroot_abspath,
                   const char *name,
                   svn_sqlite__db_t *sdb,
                   int original_format,
                   apr_int64_t wc_id,
                   apr_pool_t *scratch_pool)
{
  const char *base_abspath;
  const char *revert_abspath;
  const char *working_abspath;
  apr_hash_t *base_props;
  apr_hash_t *revert_props;
  apr_hash_t *working_props;
  const char *old_wcroot_abspath
    = svn_dirent_get_longest_ancestor(dir_abspath, new_wcroot_abspath,
                                      scratch_pool);
  const char *dir_relpath = svn_dirent_skip_ancestor(old_wcroot_abspath,
                                                     dir_abspath);

  if (*name == '\0')
    {
      base_abspath = svn_wc__adm_child(dir_abspath,
                                       PROP_BASE_FOR_DIR, scratch_pool);
      revert_abspath = svn_wc__adm_child(dir_abspath,
                                         PROP_REVERT_FOR_DIR, scratch_pool);
      working_abspath = svn_wc__adm_child(dir_abspath,
                                          PROP_WORKING_FOR_DIR, scratch_pool);
    }
  else
    {
      const char *basedir_abspath;
      const char *propsdir_abspath;

      propsdir_abspath = svn_wc__adm_child(dir_abspath, PROPS_SUBDIR,
                                           scratch_pool);
      basedir_abspath = svn_wc__adm_child(dir_abspath, PROP_BASE_SUBDIR,
                                          scratch_pool);

      base_abspath = svn_dirent_join(basedir_abspath,
                                     apr_pstrcat(scratch_pool,
                                                 name,
                                                 SVN_WC__BASE_EXT,
                                                 SVN_VA_NULL),
                                     scratch_pool);

      revert_abspath = svn_dirent_join(basedir_abspath,
                                       apr_pstrcat(scratch_pool,
                                                   name,
                                                   SVN_WC__REVERT_EXT,
                                                   SVN_VA_NULL),
                                       scratch_pool);

      working_abspath = svn_dirent_join(propsdir_abspath,
                                        apr_pstrcat(scratch_pool,
                                                    name,
                                                    SVN_WC__WORK_EXT,
                                                    SVN_VA_NULL),
                                        scratch_pool);
    }

  SVN_ERR(read_propfile(&base_props, base_abspath,
                        scratch_pool, scratch_pool));
  SVN_ERR(read_propfile(&revert_props, revert_abspath,
                        scratch_pool, scratch_pool));
  SVN_ERR(read_propfile(&working_props, working_abspath,
                        scratch_pool, scratch_pool));

  return svn_error_trace(upgrade_apply_props(
                            sdb, new_wcroot_abspath,
                            svn_relpath_join(dir_relpath, name, scratch_pool),
                            base_props, revert_props, working_props,
                            original_format, wc_id,
                            scratch_pool));
}
