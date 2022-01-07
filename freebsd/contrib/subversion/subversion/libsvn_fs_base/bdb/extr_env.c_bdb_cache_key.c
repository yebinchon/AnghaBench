
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_6__ {int inode; int device; } ;
typedef TYPE_1__ bdb_env_key_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int inode; int device; } ;
typedef TYPE_2__ apr_finfo_t ;
typedef int apr_file_t ;


 int APR_FINFO_DEV ;
 int APR_FINFO_INODE ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 int BDB_CONFIG_FILE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_file_close (int *) ;
 scalar_t__ apr_file_info_get (TYPE_2__*,int,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 char* svn_dirent_join (char const*,int ,int *) ;
 int * svn_error_wrap_apr (scalar_t__,char*) ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
bdb_cache_key(bdb_env_key_t *keyp, apr_file_t **dbconfig_file,
              const char *path, apr_pool_t *pool)
{
  const char *dbcfg_file_name = svn_dirent_join(path, BDB_CONFIG_FILE, pool);
  apr_file_t *dbcfg_file;
  apr_status_t apr_err;
  apr_finfo_t finfo;

  SVN_ERR(svn_io_file_open(&dbcfg_file, dbcfg_file_name,
                           APR_READ, APR_OS_DEFAULT, pool));

  apr_err = apr_file_info_get(&finfo, APR_FINFO_DEV | APR_FINFO_INODE,
                              dbcfg_file);
  if (apr_err)
    return svn_error_wrap_apr
      (apr_err, "Can't create BDB environment cache key");



  memset(keyp, 0, sizeof *keyp);
  keyp->device = finfo.device;
  keyp->inode = finfo.inode;

  if (dbconfig_file)
    *dbconfig_file = dbcfg_file;
  else
    apr_file_close(dbcfg_file);

  return SVN_NO_ERROR;
}
