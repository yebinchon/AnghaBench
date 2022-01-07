
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int path; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_6__ {scalar_t__ max_files_per_dir; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int PATH_REVPROPS_DIR ;
 int SVN_VA_NULL ;
 int apr_psprintf (int *,char*,int ) ;
 char const* svn_dirent_join (int ,int ,int *) ;
 char const* svn_dirent_join_many (int *,int ,int ,int ,int ) ;
 int svn_fs_fs__path_revprops_shard (TYPE_1__*,int ,int *) ;

const char *
svn_fs_fs__path_revprops(svn_fs_t *fs,
                         svn_revnum_t rev,
                         apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  if (ffd->max_files_per_dir)
    {
      return svn_dirent_join(svn_fs_fs__path_revprops_shard(fs, rev, pool),
                             apr_psprintf(pool, "%ld", rev),
                             pool);
    }

  return svn_dirent_join_many(pool, fs->path, PATH_REVPROPS_DIR,
                              apr_psprintf(pool, "%ld", rev), SVN_VA_NULL);
}
