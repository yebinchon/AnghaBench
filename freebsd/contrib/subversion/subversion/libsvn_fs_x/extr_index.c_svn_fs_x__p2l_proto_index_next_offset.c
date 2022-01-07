
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int APR_END ;
 int APR_SET ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int read_off_t_from_proto_index (int *,scalar_t__*,int *,int *) ;
 int svn_io_file_seek (int *,int ,scalar_t__*,int *) ;

svn_error_t *
svn_fs_x__p2l_proto_index_next_offset(apr_off_t *next_offset,
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

      offset -= sizeof(apr_uint64_t);
      SVN_ERR(svn_io_file_seek(proto_index, APR_SET, &offset, scratch_pool));
      SVN_ERR(read_off_t_from_proto_index(proto_index, next_offset, ((void*)0),
                                          scratch_pool));
    }

  return SVN_NO_ERROR;
}
