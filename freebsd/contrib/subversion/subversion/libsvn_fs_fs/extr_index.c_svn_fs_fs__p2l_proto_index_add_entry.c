
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ revision; scalar_t__ number; } ;
struct TYPE_5__ {scalar_t__ offset; scalar_t__ size; scalar_t__ type; scalar_t__ fnv1_checksum; TYPE_1__ item; } ;
typedef TYPE_2__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int write_uint64_to_proto_index (int *,scalar_t__,int *) ;

svn_error_t *
svn_fs_fs__p2l_proto_index_add_entry(apr_file_t *proto_index,
                                     const svn_fs_fs__p2l_entry_t *entry,
                                     apr_pool_t *scratch_pool)
{
  apr_uint64_t revision;







  SVN_ERR_ASSERT(entry->offset >= 0);
  SVN_ERR_ASSERT(entry->size >= 0);
  SVN_ERR_ASSERT( entry->item.revision >= 0
                 || entry->item.revision == SVN_INVALID_REVNUM);

  revision = entry->item.revision == SVN_INVALID_REVNUM
           ? 0
           : ((apr_uint64_t)entry->item.revision + 1);




  SVN_ERR(write_uint64_to_proto_index(proto_index, entry->offset,
                                      scratch_pool));
  SVN_ERR(write_uint64_to_proto_index(proto_index, entry->size,
                                      scratch_pool));
  SVN_ERR(write_uint64_to_proto_index(proto_index, entry->type,
                                      scratch_pool));
  SVN_ERR(write_uint64_to_proto_index(proto_index, entry->fnv1_checksum,
                                      scratch_pool));
  SVN_ERR(write_uint64_to_proto_index(proto_index, revision,
                                      scratch_pool));
  SVN_ERR(write_uint64_to_proto_index(proto_index, entry->item.number,
                                      scratch_pool));

  return SVN_NO_ERROR;
}
