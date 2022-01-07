
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_11__ {int change_set; } ;
struct TYPE_10__ {TYPE_2__ predecessor_id; scalar_t__ predecessor_count; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef TYPE_2__ svn_fs_x__id_t ;
struct TYPE_12__ {int max_files_per_dir; int youngest_rev_cache; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_13__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__get_node_revision (TYPE_1__**,TYPE_4__*,TYPE_2__*,int *,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
shards_spanned(int *spanned,
               svn_fs_t *fs,
               svn_fs_x__noderev_t *noderev,
               int walk,
               apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  int shard_size = ffd->max_files_per_dir;
  apr_pool_t *iterpool;

  int count = walk ? 1 : 0;
  svn_revnum_t shard, last_shard = ffd->youngest_rev_cache / shard_size;
  iterpool = svn_pool_create(scratch_pool);
  while (walk-- && noderev->predecessor_count)
    {
      svn_fs_x__id_t id = noderev->predecessor_id;

      svn_pool_clear(iterpool);
      SVN_ERR(svn_fs_x__get_node_revision(&noderev, fs, &id, scratch_pool,
                                          iterpool));
      shard = svn_fs_x__get_revnum(id.change_set) / shard_size;
      if (shard != last_shard)
        {
          ++count;
          last_shard = shard;
        }
    }
  svn_pool_destroy(iterpool);

  *spanned = count;
  return SVN_NO_ERROR;
}
