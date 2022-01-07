
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_11__ {int number; scalar_t__ change_set; } ;
struct TYPE_12__ {int size; TYPE_1__ id; } ;
typedef TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_13__ {scalar_t__ type; int base_length; int base_item_index; int base_revision; } ;
typedef TYPE_3__ svn_fs_x__rep_header_t ;
struct TYPE_14__ {int max_files_per_dir; } ;
typedef TYPE_4__ svn_fs_x__data_t ;
struct TYPE_15__ {TYPE_4__* fsap_data; } ;
typedef TYPE_5__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int shared_file_t ;
typedef int rep_state_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int create_rep_state_body (int **,TYPE_3__**,int **,TYPE_2__*,TYPE_5__*,int *,int *) ;
 scalar_t__ svn_fs_x__change_set_by_rev (int ) ;
 int svn_fs_x__get_revnum (scalar_t__) ;
 scalar_t__ svn_fs_x__rep_delta ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_x__rep_chain_length(int *chain_length,
                           int *shard_count,
                           svn_fs_x__representation_t *rep,
                           svn_fs_t *fs,
                           apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_revnum_t shard_size = ffd->max_files_per_dir;
  svn_boolean_t is_delta = FALSE;
  int count = 0;
  int shards = 1;
  svn_revnum_t revision = svn_fs_x__get_revnum(rep->id.change_set);
  svn_revnum_t last_shard = revision / shard_size;





  apr_pool_t *iterpool = svn_pool_create(scratch_pool);




  svn_fs_x__representation_t base_rep = *rep;


  shared_file_t *file_hint = ((void*)0);

  svn_fs_x__rep_header_t *header;



  do
    {
      rep_state_t *rep_state;
      revision = svn_fs_x__get_revnum(base_rep.id.change_set);
      if (revision / shard_size != last_shard)
        {
          last_shard = revision / shard_size;
          ++shards;
        }

      SVN_ERR(create_rep_state_body(&rep_state,
                                    &header,
                                    &file_hint,
                                    &base_rep,
                                    fs,
                                    iterpool,
                                    iterpool));

      base_rep.id.change_set
        = svn_fs_x__change_set_by_rev(header->base_revision);
      base_rep.id.number = header->base_item_index;
      base_rep.size = header->base_length;
      is_delta = header->type == svn_fs_x__rep_delta;
      ++count;
      if (count % 16 == 0)
        {
          file_hint = ((void*)0);
          svn_pool_clear(iterpool);
        }
    }
  while (is_delta && base_rep.id.change_set);

  *chain_length = count;
  *shard_count = shards;
  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
