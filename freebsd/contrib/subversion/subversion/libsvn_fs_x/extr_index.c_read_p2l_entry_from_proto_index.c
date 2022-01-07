
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_count; int fnv1_checksum; int type; int size; int offset; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_off_t_from_proto_index (int *,int *,int *,int *) ;
 int read_uint32_from_proto_index (int *,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_p2l_entry_from_proto_index(apr_file_t *proto_index,
                                svn_fs_x__p2l_entry_t *entry,
                                svn_boolean_t *eof,
                                apr_pool_t *scratch_pool)
{
  SVN_ERR(read_off_t_from_proto_index(proto_index, &entry->offset,
                                      eof, scratch_pool));
  SVN_ERR(read_off_t_from_proto_index(proto_index, &entry->size,
                                      eof, scratch_pool));
  SVN_ERR(read_uint32_from_proto_index(proto_index, &entry->type,
                                       eof, scratch_pool));
  SVN_ERR(read_uint32_from_proto_index(proto_index, &entry->fnv1_checksum,
                                       eof, scratch_pool));
  SVN_ERR(read_uint32_from_proto_index(proto_index, &entry->item_count,
                                       eof, scratch_pool));

  return SVN_NO_ERROR;
}
