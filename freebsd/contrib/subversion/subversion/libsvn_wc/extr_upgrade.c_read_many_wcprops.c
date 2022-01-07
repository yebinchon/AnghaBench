
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_ENTRY_THIS_DIR ;
 int TRUE ;
 int WCPROPS_FNAME_FOR_DIR ;
 int WCPROPS_SUBDIR_FOR_FILES ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 int apr_pstrdup (int *,char const*) ;
 int read_propfile (int **,char const*,int *,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_io_get_dirents3 (int **,char const*,int ,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_wc__adm_child (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_many_wcprops(apr_hash_t **all_wcprops,
                  const char *dir_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  const char *propfile_abspath;
  apr_hash_t *wcprops;
  apr_hash_t *dirents;
  const char *props_dir_abspath;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_hash_index_t *hi;

  *all_wcprops = apr_hash_make(result_pool);


  propfile_abspath = svn_wc__adm_child(dir_abspath, WCPROPS_FNAME_FOR_DIR,
                                       scratch_pool);
  SVN_ERR(read_propfile(&wcprops, propfile_abspath, result_pool, iterpool));
  if (wcprops != ((void*)0))
    svn_hash_sets(*all_wcprops, SVN_WC_ENTRY_THIS_DIR, wcprops);

  props_dir_abspath = svn_wc__adm_child(dir_abspath, WCPROPS_SUBDIR_FOR_FILES,
                                        scratch_pool);


  SVN_ERR(svn_io_get_dirents3(&dirents, props_dir_abspath, TRUE,
                              scratch_pool, scratch_pool));

  for (hi = apr_hash_first(scratch_pool, dirents);
       hi;
       hi = apr_hash_next(hi))
    {
      const char *name = apr_hash_this_key(hi);

      svn_pool_clear(iterpool);

      propfile_abspath = svn_dirent_join(props_dir_abspath, name, iterpool);

      SVN_ERR(read_propfile(&wcprops, propfile_abspath,
                            result_pool, iterpool));
      SVN_ERR_ASSERT(wcprops != ((void*)0));
      svn_hash_sets(*all_wcprops, apr_pstrdup(result_pool, name), wcprops);
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
