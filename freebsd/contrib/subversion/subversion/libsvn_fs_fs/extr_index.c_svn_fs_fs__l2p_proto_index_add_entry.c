
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int offset; int item_index; } ;
typedef TYPE_1__ l2p_proto_entry_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int SVN_ERR_ASSERT (int) ;
 int UINT_MAX ;
 int * svn_error_trace (int ) ;
 int write_l2p_entry_to_proto_index (int *,TYPE_1__,int *) ;

svn_error_t *
svn_fs_fs__l2p_proto_index_add_entry(apr_file_t *proto_index,
                                     apr_off_t offset,
                                     apr_uint64_t item_index,
                                     apr_pool_t *scratch_pool)
{
  l2p_proto_entry_t entry;


  SVN_ERR_ASSERT(offset >= -1);


  entry.offset = (apr_uint64_t)offset + 1;



  SVN_ERR_ASSERT(item_index < UINT_MAX / 2);
  entry.item_index = item_index;

  return svn_error_trace(write_l2p_entry_to_proto_index(proto_index, entry,
                                                        scratch_pool));
}
