
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int number; int revision; } ;
struct TYPE_11__ {scalar_t__ fnv1_checksum; TYPE_2__ item; int type; scalar_t__ size; int offset; } ;
typedef TYPE_3__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
struct TYPE_12__ {int pack_offset; int proto_p2l_index; int pack_file; TYPE_1__* fs; } ;
typedef TYPE_4__ pack_context_t ;
struct TYPE_13__ {int block_size; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_9__ {TYPE_5__* fsap_data; } ;


 scalar_t__ MAX (int,int) ;
 int SVN_ERR (int ) ;
 int SVN_FS_FS__ITEM_INDEX_UNUSED ;
 int SVN_FS_FS__ITEM_TYPE_UNUSED ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ get_block_left (TYPE_4__*) ;
 int svn_fs_fs__p2l_proto_index_add_entry (int ,TYPE_3__*,int *) ;
 int write_null_bytes (int ,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
auto_pad_block(pack_context_t *context,
               apr_off_t to_add,
               apr_pool_t *pool)
{
  fs_fs_data_t *ffd = context->fs->fsap_data;



  const apr_off_t max_padding = MAX(ffd->block_size / 50, 512);



  apr_off_t padding = get_block_left(context);

  if (padding < to_add && padding < max_padding)
    {


      svn_fs_fs__p2l_entry_t null_entry;

      null_entry.offset = context->pack_offset;
      null_entry.size = padding;
      null_entry.type = SVN_FS_FS__ITEM_TYPE_UNUSED;
      null_entry.item.revision = SVN_INVALID_REVNUM;
      null_entry.item.number = SVN_FS_FS__ITEM_INDEX_UNUSED;
      null_entry.fnv1_checksum = 0;

      SVN_ERR(write_null_bytes(context->pack_file, padding, pool));
      SVN_ERR(svn_fs_fs__p2l_proto_index_add_entry(
                   context->proto_p2l_index, &null_entry, pool));
      context->pack_offset += padding;
    }

  return SVN_NO_ERROR;
}
