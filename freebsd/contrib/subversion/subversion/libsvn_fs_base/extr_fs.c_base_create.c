
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int minor; } ;
typedef TYPE_1__ svn_version_t ;
typedef int svn_mutex__t ;
struct TYPE_11__ {scalar_t__ fsap_data; int path; scalar_t__ config; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_12__ {int format; } ;
typedef TYPE_3__ base_fs_data_t ;
typedef int apr_pool_t ;


 int FORMAT_FILE ;
 int SVN_ERR (int ) ;
 int SVN_FS_BASE__FORMAT_NUMBER ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int cleanup_fs (TYPE_2__*) ;
 int * open_databases (TYPE_2__*,int ,int,char const*) ;
 int populate_opened_fs (TYPE_2__*,int *) ;
 int svn_dirent_join (int ,int ,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_error_trace (int ) ;
 int svn_fs__compatible_version (TYPE_1__**,scalar_t__,int *) ;
 int * svn_fs_base__dag_init_fs (TYPE_2__*) ;
 int * svn_io_write_version_file (int ,int,int *) ;

__attribute__((used)) static svn_error_t *
base_create(svn_fs_t *fs,
            const char *path,
            svn_mutex__t *common_pool_lock,
            apr_pool_t *scratch_pool,
            apr_pool_t *common_pool)
{
  int format = SVN_FS_BASE__FORMAT_NUMBER;
  svn_error_t *svn_err;


  if (fs->config)
    {
      svn_version_t *compatible_version;
      SVN_ERR(svn_fs__compatible_version(&compatible_version, fs->config,
                                         scratch_pool));


      switch(compatible_version->minor)
        {
          case 0:
          case 1:
          case 2:
          case 3: format = 1;
                  break;

          case 4: format = 2;
                  break;

          case 5: format = 3;
                  break;

          default:format = SVN_FS_BASE__FORMAT_NUMBER;
        }
    }


  svn_err = open_databases(fs, TRUE, format, path);
  if (svn_err) goto error;


  svn_err = svn_fs_base__dag_init_fs(fs);
  if (svn_err) goto error;


  svn_err = svn_io_write_version_file(svn_dirent_join(fs->path, FORMAT_FILE,
                                                      scratch_pool),
                                      format, scratch_pool);
  if (svn_err) goto error;

  ((base_fs_data_t *) fs->fsap_data)->format = format;

  SVN_ERR(populate_opened_fs(fs, scratch_pool));
  return SVN_NO_ERROR;

error:
  return svn_error_compose_create(svn_err,
                                  svn_error_trace(cleanup_fs(fs)));
}
