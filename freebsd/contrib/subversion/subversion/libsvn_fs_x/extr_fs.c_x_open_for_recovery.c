
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_mutex__t ;
struct TYPE_10__ {int pool; int path; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int apr_pstrdup (int ,char const*) ;
 int initialize_fs_struct (TYPE_1__*) ;
 int svn_error_clear (int *) ;
 char* svn_fs_x__path_current (TYPE_1__*,int *) ;
 int svn_fs_x__read_format_file (TYPE_1__*,int *) ;
 int svn_fs_x__write_current (TYPE_1__*,int ,int *) ;
 int * svn_fs_x__youngest_rev (int *,TYPE_1__*,int *) ;
 int svn_io_file_create_empty (char const*,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int uninitialize_fs_struct (TYPE_1__*) ;
 int * x_open (TYPE_1__*,char const*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
x_open_for_recovery(svn_fs_t *fs,
                    const char *path,
                    svn_mutex__t *common_pool_lock,
                    apr_pool_t *scratch_pool,
                    apr_pool_t *common_pool)
{
  svn_error_t * err;
  svn_revnum_t youngest_rev;
  apr_pool_t * subpool = svn_pool_create(scratch_pool);
  fs->path = apr_pstrdup(fs->pool, path);

  SVN_ERR(initialize_fs_struct(fs));


  SVN_ERR(svn_fs_x__read_format_file(fs, subpool));


  err = svn_fs_x__youngest_rev(&youngest_rev, fs, subpool);
  if (err)
    {
      const char *file_path;
      svn_error_clear(err);
      file_path = svn_fs_x__path_current(fs, subpool);



      SVN_ERR(svn_io_remove_file2(file_path, TRUE, subpool));
      SVN_ERR(svn_io_file_create_empty(file_path, subpool));
      SVN_ERR(svn_fs_x__write_current(fs, 0, subpool));
    }

  uninitialize_fs_struct(fs);
  svn_pool_destroy(subpool);


  return x_open(fs, path, common_pool_lock, scratch_pool, common_pool);
}
