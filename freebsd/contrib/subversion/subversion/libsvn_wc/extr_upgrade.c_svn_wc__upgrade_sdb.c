
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
struct bump_baton {char const* wcroot_abspath; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_UPGRADE_REQUIRED ;
 int * SVN_NO_ERROR ;
 int SVN_SQLITE__WITH_LOCK (int ,int *) ;

 int SVN_WC__WC_NG_VERSION ;
 int XXX ;
 int _ (char*) ;
 int bump_to_30 ;
 int bump_to_31 ;
 int bump_to_XXX ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int,...) ;
 int svn_sqlite__read_schema_version (int*,int *,int *) ;
 int svn_sqlite__with_transaction (int *,int ,struct bump_baton*,int *) ;
 int svn_wc__db_install_schema_statistics (int *,int *) ;
 int svn_wc__version_string_from_format (int) ;
 int wipe_obsolete_files (char const*,int *) ;

svn_error_t *
svn_wc__upgrade_sdb(int *result_format,
                    const char *wcroot_abspath,
                    svn_sqlite__db_t *sdb,
                    int start_format,
                    apr_pool_t *scratch_pool)
{
  struct bump_baton bb;

  bb.wcroot_abspath = wcroot_abspath;

  if (start_format < SVN_WC__WC_NG_VERSION )
    return svn_error_createf(SVN_ERR_WC_UPGRADE_REQUIRED, ((void*)0),
                             _("Working copy '%s' is too old (format %d, "
                               "created by Subversion %s)"),
                             svn_dirent_local_style(wcroot_abspath,
                                                    scratch_pool),
                             start_format,
                             svn_wc__version_string_from_format(start_format));


  if (start_format < 19)
    return svn_error_createf(SVN_ERR_WC_UPGRADE_REQUIRED, ((void*)0),
                             _("Working copy '%s' is an old development "
                               "version (format %d); to upgrade it, "
                               "use a format 18 client, then "
                               "use 'tools/dev/wc-ng/bump-to-19.py', then "
                               "use the current client"),
                             svn_dirent_local_style(wcroot_abspath,
                                                    scratch_pool),
                             start_format);
  else if (start_format < 29)
    return svn_error_createf(SVN_ERR_WC_UPGRADE_REQUIRED, ((void*)0),
                             _("Working copy '%s' is an old development "
                               "version (format %d); to upgrade it, "
                               "use a Subversion 1.7-1.9 client, then "
                               "use the current client"),
                             svn_dirent_local_style(wcroot_abspath,
                                                    scratch_pool),
                             start_format);






  switch (start_format)
    {
      case 29:
        SVN_ERR(svn_sqlite__with_transaction(sdb, bump_to_30, &bb,
                                             scratch_pool));
        *result_format = 30;

      case 30:
        SVN_ERR(svn_sqlite__with_transaction(sdb, bump_to_31, &bb,
                                             scratch_pool));
        *result_format = 31;
      case 128:

        *result_format = 128;

        SVN_SQLITE__WITH_LOCK(
            svn_wc__db_install_schema_statistics(sdb, scratch_pool),
            sdb);
    }
  wipe_obsolete_files(wcroot_abspath, scratch_pool);

  return SVN_NO_ERROR;
}
