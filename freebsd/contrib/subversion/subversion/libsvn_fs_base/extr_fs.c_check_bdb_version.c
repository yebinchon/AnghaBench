
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int DB_VERSION_MAJOR ;
 int DB_VERSION_MINOR ;
 int DB_VERSION_PATCH ;
 int SVN_ERR_FS_GENERAL ;
 int SVN_FS_WANT_DB_MAJOR ;
 int SVN_FS_WANT_DB_MINOR ;
 int SVN_FS_WANT_DB_PATCH ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int db_version (int*,int*,int*) ;
 int * svn_error_createf (int ,int ,int ,int,int,int,int,int,int) ;

__attribute__((used)) static svn_error_t *
check_bdb_version(void)
{
  int major, minor, patch;

  db_version(&major, &minor, &patch);


  if ((major < SVN_FS_WANT_DB_MAJOR)
      || (major == SVN_FS_WANT_DB_MAJOR && minor < SVN_FS_WANT_DB_MINOR)
      || (major == SVN_FS_WANT_DB_MAJOR && minor == SVN_FS_WANT_DB_MINOR
          && patch < SVN_FS_WANT_DB_PATCH))
    return svn_error_createf(SVN_ERR_FS_GENERAL, 0,
                             _("Bad database version: got %d.%d.%d,"
                               " should be at least %d.%d.%d"),
                             major, minor, patch,
                             SVN_FS_WANT_DB_MAJOR,
                             SVN_FS_WANT_DB_MINOR,
                             SVN_FS_WANT_DB_PATCH);



  if (major != DB_VERSION_MAJOR || minor != DB_VERSION_MINOR)
    return svn_error_createf(SVN_ERR_FS_GENERAL, 0,
                             _("Bad database version:"
                               " compiled with %d.%d.%d,"
                               " running against %d.%d.%d"),
                             DB_VERSION_MAJOR,
                             DB_VERSION_MINOR,
                             DB_VERSION_PATCH,
                             major, minor, patch);
  return SVN_NO_ERROR;
}
