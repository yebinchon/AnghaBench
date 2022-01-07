
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SQLITE_CONFIG_MULTITHREAD ;
 int SQLITE_ERROR_CODE (int) ;
 int SQLITE_ERR_MSG (int ,int ) ;
 int SQLITE_MISUSE ;
 int SQLITE_OK ;
 int SVN_ERR_SQLITE_ERROR ;
 int * SVN_NO_ERROR ;
 int SVN_SQLITE_MIN_VERSION ;
 scalar_t__ SVN_SQLITE_MIN_VERSION_NUMBER ;
 int _ (char*) ;
 int sqlite3_config (int ) ;
 int sqlite3_initialize () ;
 int sqlite3_libversion () ;
 scalar_t__ sqlite3_libversion_number () ;
 int sqlite3_threadsafe () ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int,...) ;

__attribute__((used)) static svn_error_t *
init_sqlite(void *baton, apr_pool_t *pool)
{
  if (sqlite3_libversion_number() < SVN_SQLITE_MIN_VERSION_NUMBER)
    {
      return svn_error_createf(
                    SVN_ERR_SQLITE_ERROR, ((void*)0),
                    _("SQLite compiled for %s, but running with %s"),
                    SVN_SQLITE_MIN_VERSION, sqlite3_libversion());
    }
  return SVN_NO_ERROR;
}
