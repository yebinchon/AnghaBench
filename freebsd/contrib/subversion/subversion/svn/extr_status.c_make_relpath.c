
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 char const* apr_pstrdup (int *,char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 char* svn_dirent_get_longest_ancestor (char const*,char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char const* svn_dirent_join (char const*,char const*,int *) ;
 char* svn_dirent_skip_ancestor (char const*,char const*) ;

__attribute__((used)) static const char *
make_relpath(const char *target_abspath,
             const char *target_path,
             const char *local_abspath,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  const char *la;
  const char *parent_dir_els = "";
  const char *t_relpath;
  const char *p_relpath;





  t_relpath = svn_dirent_skip_ancestor(target_abspath, local_abspath);

  if (t_relpath)
    return svn_dirent_join(target_path, t_relpath, result_pool);
  la = svn_dirent_get_longest_ancestor(target_abspath, local_abspath,
                                       scratch_pool);
  if (*la == '\0')
    {

      return apr_pstrdup(result_pool, local_abspath);
    }
  t_relpath = svn_dirent_skip_ancestor(la, target_abspath);
  p_relpath = svn_dirent_skip_ancestor(la, local_abspath);







  while (*t_relpath)
    {
      t_relpath = svn_dirent_dirname(t_relpath, scratch_pool);
      parent_dir_els = svn_dirent_join(parent_dir_els, "..", scratch_pool);
    }


  return svn_dirent_join(parent_dir_els, p_relpath, result_pool);
}
