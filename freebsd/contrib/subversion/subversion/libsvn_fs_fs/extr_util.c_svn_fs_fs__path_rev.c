
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_6__ {int path; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_7__ {scalar_t__ max_files_per_dir; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int PATH_REVS_DIR ;
 int SVN_VA_NULL ;
 int apr_psprintf (int *,char*,int ) ;
 int assert (int) ;
 char const* svn_dirent_join (int ,int ,int *) ;
 char const* svn_dirent_join_many (int *,int ,int ,int ,int ) ;
 int svn_fs_fs__is_packed_rev (TYPE_1__*,int ) ;
 int svn_fs_fs__path_rev_shard (TYPE_1__*,int ,int *) ;

const char *
svn_fs_fs__path_rev(svn_fs_t *fs, svn_revnum_t rev, apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;

  assert(! svn_fs_fs__is_packed_rev(fs, rev));

  if (ffd->max_files_per_dir)
    {
      return svn_dirent_join(svn_fs_fs__path_rev_shard(fs, rev, pool),
                             apr_psprintf(pool, "%ld", rev),
                             pool);
    }

  return svn_dirent_join_many(pool, fs->path, PATH_REVS_DIR,
                              apr_psprintf(pool, "%ld", rev), SVN_VA_NULL);
}
