
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ youngest_rev_cache; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_10__ {int pool; int path; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char const*) ;
 int read_config (TYPE_1__*,int ,int ,int *) ;
 int read_global_config (TYPE_2__*) ;
 int read_uuid (TYPE_2__*,int *) ;
 int svn_fs_x__read_format_file (TYPE_2__*,int *) ;
 int svn_fs_x__update_min_unpacked_rev (TYPE_2__*,int *) ;

svn_error_t *
svn_fs_x__open(svn_fs_t *fs,
               const char *path,
               apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  fs->path = apr_pstrdup(fs->pool, path);


  SVN_ERR(svn_fs_x__read_format_file(fs, scratch_pool));


  SVN_ERR(read_uuid(fs, scratch_pool));


  SVN_ERR(svn_fs_x__update_min_unpacked_rev(fs, scratch_pool));


  SVN_ERR(read_config(ffd, fs->path, fs->pool, scratch_pool));


  SVN_ERR(read_global_config(fs));

  ffd->youngest_rev_cache = 0;

  return SVN_NO_ERROR;
}
