
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ offset; scalar_t__ size; } ;
typedef TYPE_1__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int APR_END ;
 int APR_SET ;
 scalar_t__ P2L_PROTO_INDEX_ENTRY_SIZE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_p2l_entry_from_proto_index (int *,TYPE_1__*,int *,int *) ;
 int svn_io_file_seek (int *,int ,scalar_t__*,int *) ;

svn_error_t *
svn_fs_fs__p2l_proto_index_next_offset(apr_off_t *next_offset,
                                       apr_file_t *proto_index,
                                       apr_pool_t *scratch_pool)
{
  apr_off_t offset = 0;


  SVN_ERR(svn_io_file_seek(proto_index, APR_END, &offset, scratch_pool));
  if (offset == 0)
    {
      *next_offset = 0;
    }
  else
    {

      svn_fs_fs__p2l_entry_t entry;
      offset -= P2L_PROTO_INDEX_ENTRY_SIZE;

      SVN_ERR(svn_io_file_seek(proto_index, APR_SET, &offset, scratch_pool));
      SVN_ERR(read_p2l_entry_from_proto_index(proto_index, &entry,
                                              ((void*)0), scratch_pool));


      *next_offset = entry.offset + entry.size;
    }

  return SVN_NO_ERROR;
}
