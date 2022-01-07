
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct pack_baton {int shard; int cancel_baton; int (* cancel_func ) (int ) ;TYPE_2__* fs; void* revsprops_dir; void* revs_dir; int notify_baton; int (* notify_func ) (int ,int,int ,int *) ;} ;
struct TYPE_3__ {int min_unpacked_rev; int max_files_per_dir; int youngest_rev_cache; scalar_t__ format; } ;
typedef TYPE_1__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
struct TYPE_4__ {int path; TYPE_1__* fsap_data; } ;


 int PATH_REVPROPS_DIR ;
 int PATH_REVS_DIR ;
 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT ;
 int * SVN_NO_ERROR ;
 int get_pack_status (scalar_t__*,TYPE_2__*,int *) ;
 int pack_shard (struct pack_baton*,int *) ;
 int stub1 (int ,int,int ,int *) ;
 int stub2 (int ) ;
 void* svn_dirent_join (int ,int ,int *) ;
 int svn_fs_pack_notify_noop ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
pack_body(void *baton,
          apr_pool_t *pool)
{
  struct pack_baton *pb = baton;
  fs_fs_data_t *ffd = pb->fs->fsap_data;
  apr_int64_t completed_shards;
  apr_pool_t *iterpool;
  svn_boolean_t fully_packed;



  SVN_ERR(get_pack_status(&fully_packed, pb->fs, pool));
  if (fully_packed)
    {
      if (pb->notify_func)
        (*pb->notify_func)(pb->notify_baton,
                           ffd->min_unpacked_rev / ffd->max_files_per_dir,
                           svn_fs_pack_notify_noop, pool);

      return SVN_NO_ERROR;
    }

  completed_shards = (ffd->youngest_rev_cache + 1) / ffd->max_files_per_dir;
  pb->revs_dir = svn_dirent_join(pb->fs->path, PATH_REVS_DIR, pool);
  if (ffd->format >= SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT)
    pb->revsprops_dir = svn_dirent_join(pb->fs->path, PATH_REVPROPS_DIR,
                                        pool);

  iterpool = svn_pool_create(pool);
  for (pb->shard = ffd->min_unpacked_rev / ffd->max_files_per_dir;
       pb->shard < completed_shards;
       pb->shard++)
    {
      svn_pool_clear(iterpool);

      if (pb->cancel_func)
        SVN_ERR(pb->cancel_func(pb->cancel_baton));

      SVN_ERR(pack_shard(pb, iterpool));
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
