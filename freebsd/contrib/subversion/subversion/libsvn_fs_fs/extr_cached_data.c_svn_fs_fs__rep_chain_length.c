
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_10__ {TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_11__ {int base_revision; scalar_t__ type; int base_length; int base_item_index; } ;
typedef TYPE_2__ svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int shared_file_t ;
struct TYPE_12__ {int revision; int txn_id; int size; int item_index; } ;
typedef TYPE_3__ representation_t ;
typedef int rep_state_t ;
struct TYPE_13__ {int max_files_per_dir; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int create_rep_state_body (int **,TYPE_2__**,int **,TYPE_3__*,TYPE_1__*,int *,int *) ;
 int svn_fs_fs__id_txn_reset (int *) ;
 scalar_t__ svn_fs_fs__rep_delta ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_fs__rep_chain_length(int *chain_length,
                            int *shard_count,
                            representation_t *rep,
                            svn_fs_t *fs,
                            apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_revnum_t shard_size = ffd->max_files_per_dir
                          ? ffd->max_files_per_dir
                          : 1;
  apr_pool_t *subpool = svn_pool_create(scratch_pool);
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_boolean_t is_delta = FALSE;
  int count = 0;
  int shards = 1;
  svn_revnum_t last_shard = rep->revision / shard_size;




  representation_t base_rep = *rep;


  shared_file_t *file_hint = ((void*)0);

  svn_fs_fs__rep_header_t *header;



  do
    {
      rep_state_t *rep_state;

      svn_pool_clear(iterpool);

      if (base_rep.revision / shard_size != last_shard)
        {
          last_shard = base_rep.revision / shard_size;
          ++shards;
        }

      SVN_ERR(create_rep_state_body(&rep_state,
                                    &header,
                                    &file_hint,
                                    &base_rep,
                                    fs,
                                    subpool,
                                    iterpool));

      base_rep.revision = header->base_revision;
      base_rep.item_index = header->base_item_index;
      base_rep.size = header->base_length;
      svn_fs_fs__id_txn_reset(&base_rep.txn_id);
      is_delta = header->type == svn_fs_fs__rep_delta;
      ++count;
      if (count % 16 == 0)
        {
          file_hint = ((void*)0);
          svn_pool_clear(subpool);
        }
    }
  while (is_delta && base_rep.revision);

  *chain_length = count;
  *shard_count = shards;
  svn_pool_destroy(subpool);
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
