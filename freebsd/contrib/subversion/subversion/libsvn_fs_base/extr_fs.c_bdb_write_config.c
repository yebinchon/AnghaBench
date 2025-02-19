
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; scalar_t__ config; int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int dbconfig_options ;
typedef int dbconfig_contents ;
typedef int apr_file_t ;


 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_WRITE ;
 int BDB_CONFIG_FILE ;
 int DB_VERSION_MAJOR ;
 int DB_VERSION_MINOR ;
 int SVN_ERR (int ) ;


 scalar_t__ strcmp (void*,char*) ;
 int strlen (char const*) ;
 char* svn_dirent_join (int ,int ,int ) ;
 void* svn_hash_gets (scalar_t__,char const*) ;
 int * svn_io_file_close (int *,int ) ;
 int svn_io_file_open (int **,char const*,int,int ,int ) ;
 int svn_io_file_write_full (int *,char const*,int,int *,int ) ;

__attribute__((used)) static svn_error_t *
bdb_write_config(svn_fs_t *fs)
{
  const char *dbconfig_file_name =
    svn_dirent_join(fs->path, BDB_CONFIG_FILE, fs->pool);
  apr_file_t *dbconfig_file = ((void*)0);
  int i;

  static const char dbconfig_contents[] =
    "# This is the configuration file for the Berkeley DB environment\n"
    "# used by your Subversion repository.\n"
    "# You must run 'svnadmin recover' whenever you modify this file,\n"
    "# for your changes to take effect.\n"
    "\n"
    "### Lock subsystem\n"
    "#\n"
    "# Make sure you read the documentation at:\n"
    "#\n"
    "#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/lock_max.html\n"
    "#\n"
    "# before tweaking these values.\n"
    "#\n"
    "set_lk_max_locks   2000\n"
    "set_lk_max_lockers 2000\n"
    "set_lk_max_objects 2000\n"
    "\n"
    "### Log file subsystem\n"
    "#\n"
    "# Make sure you read the documentation at:\n"
    "#\n"
    "#   http://docs.oracle.com/cd/E17076_02/html/api_reference/C/envset_lg_bsize.html\n"
    "#   http://docs.oracle.com/cd/E17076_02/html/api_reference/C/envset_lg_max.html\n"
    "#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_limits.html\n"
    "#\n"
    "# Increase the size of the in-memory log buffer from the default\n"
    "# of 32 Kbytes to 256 Kbytes.  Decrease the log file size from\n"
    "# 10 Mbytes to 1 Mbyte.  This will help reduce the amount of disk\n"
    "# space required for hot backups.  The size of the log file must be\n"
    "# at least four times the size of the in-memory log buffer.\n"
    "#\n"
    "# Note: Decreasing the in-memory buffer size below 256 Kbytes will hurt\n"
    "# hurt commit performance. For details, see:\n"
    "#\n"
    "#   http://svn.haxx.se/dev/archive-2002-02/0141.shtml\n"
    "#\n"
    "set_lg_bsize     262144\n"
    "set_lg_max      1048576\n"
    "#\n"
    "# If you see \"log region out of memory\" errors, bump lg_regionmax.\n"
    "# For more information, see:\n"
    "#\n"
    "#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_config.html\n"
    "#   http://svn.haxx.se/users/archive-2004-10/1000.shtml\n"
    "#\n"
    "set_lg_regionmax 131072\n"
    "#\n"

    "# The default cache size in BDB is only 256k. As explained in\n"
    "# http://svn.haxx.se/dev/archive-2004-12/0368.shtml, this is too\n"
    "# small for most applications. Bump this number if \"db_stat -m\"\n"
    "# shows too many cache misses.\n"
    "#\n"
    "set_cachesize    0 1048576 1\n";
  static const struct
  {
    int bdb_major;
    int bdb_minor;
    const char *config_key;
    const char *header;
    const char *inactive;
    const char *active;
  } dbconfig_options[] = {

    { 4, 0, 128,

      "#\n"
      "# Disable fsync of log files on transaction commit. Read the\n"
      "# documentation about DB_TXN_NOSYNC at:\n"
      "#\n"
      "#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_config.html\n"
      "#\n"
      "# [requires Berkeley DB 4.0]\n"
      "#\n",

      "#set_flags DB_TXN_NOSYNC\n",

      "set_flags DB_TXN_NOSYNC\n" },

    { 4, 2, 129,

      "#\n"
      "# Enable automatic removal of unused transaction log files.\n"
      "# Read the documentation about DB_LOG_AUTOREMOVE at:\n"
      "#\n"
      "#   http://docs.oracle.com/cd/E17076_02/html/programmer_reference/log_config.html\n"
      "#\n"
      "# [requires Berkeley DB 4.2]\n"
      "#\n",

      "#set_flags DB_LOG_AUTOREMOVE\n",

      "set_flags DB_LOG_AUTOREMOVE\n" },
  };
  static const int dbconfig_options_length =
    sizeof(dbconfig_options)/sizeof(*dbconfig_options);


  SVN_ERR(svn_io_file_open(&dbconfig_file, dbconfig_file_name,
                           APR_WRITE | APR_CREATE, APR_OS_DEFAULT,
                           fs->pool));

  SVN_ERR(svn_io_file_write_full(dbconfig_file, dbconfig_contents,
                                 sizeof(dbconfig_contents) - 1, ((void*)0),
                                 fs->pool));


  for (i = 0; i < dbconfig_options_length; ++i)
    {
      void *value = ((void*)0);
      const char *choice;

      if (fs->config)
        {
          value = svn_hash_gets(fs->config, dbconfig_options[i].config_key);
        }

      SVN_ERR(svn_io_file_write_full(dbconfig_file,
                                     dbconfig_options[i].header,
                                     strlen(dbconfig_options[i].header),
                                     ((void*)0), fs->pool));

      if (((DB_VERSION_MAJOR == dbconfig_options[i].bdb_major
            && DB_VERSION_MINOR >= dbconfig_options[i].bdb_minor)
           || DB_VERSION_MAJOR > dbconfig_options[i].bdb_major)
          && value != ((void*)0) && strcmp(value, "0") != 0)
        choice = dbconfig_options[i].active;
      else
        choice = dbconfig_options[i].inactive;

      SVN_ERR(svn_io_file_write_full(dbconfig_file, choice, strlen(choice),
                                     ((void*)0), fs->pool));
    }

  return svn_io_file_close(dbconfig_file, fs->pool);
}
