
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int TRUE ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int db_is_switched (int *,int *,int *,char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_node_dir ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_is_switched(svn_boolean_t *is_wcroot,
                       svn_boolean_t *is_switched,
                       svn_node_kind_t *kind,
                       svn_wc__db_t *db,
                       const char *local_abspath,
                       apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  if (is_switched)
    *is_switched = FALSE;

  if (*local_relpath == '\0')
    {

      if (is_wcroot)
        *is_wcroot = TRUE;

      if (kind)
        *kind = svn_node_dir;
      return SVN_NO_ERROR;
    }

  if (is_wcroot)
    *is_wcroot = FALSE;

  if (! is_switched && ! kind)
    return SVN_NO_ERROR;

  SVN_WC__DB_WITH_TXN(
    db_is_switched(is_switched, kind, wcroot, local_relpath, scratch_pool),
    wcroot);
  return SVN_NO_ERROR;
}
