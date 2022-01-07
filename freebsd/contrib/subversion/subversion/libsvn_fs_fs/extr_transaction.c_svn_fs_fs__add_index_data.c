
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; int len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_file_t ;


 int APR_END ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__l2p_index_append (int **,int *,int *,char const*,int ,int *,int *) ;
 int svn_fs_fs__p2l_index_append (int **,int *,int *,char const*,int ,int *,int *) ;
 TYPE_1__* svn_fs_fs__unparse_footer (scalar_t__,int *,scalar_t__,int *,int *,int *) ;
 int svn_io_file_seek (int *,int ,scalar_t__*,int *) ;
 int svn_io_file_write_full (int *,unsigned char*,int,int *,int *) ;

svn_error_t *
svn_fs_fs__add_index_data(svn_fs_t *fs,
                          apr_file_t *file,
                          const char *l2p_proto_index,
                          const char *p2l_proto_index,
                          svn_revnum_t revision,
                          apr_pool_t *pool)
{
  apr_off_t l2p_offset;
  apr_off_t p2l_offset;
  svn_stringbuf_t *footer;
  unsigned char footer_length;
  svn_checksum_t *l2p_checksum;
  svn_checksum_t *p2l_checksum;


  l2p_offset = 0;
  SVN_ERR(svn_io_file_seek(file, APR_END, &l2p_offset, pool));
  SVN_ERR(svn_fs_fs__l2p_index_append(&l2p_checksum, fs, file,
                                      l2p_proto_index, revision,
                                      pool, pool));

  p2l_offset = 0;
  SVN_ERR(svn_io_file_seek(file, APR_END, &p2l_offset, pool));
  SVN_ERR(svn_fs_fs__p2l_index_append(&p2l_checksum, fs, file,
                                      p2l_proto_index, revision,
                                      pool, pool));


  footer = svn_fs_fs__unparse_footer(l2p_offset, l2p_checksum,
                                     p2l_offset, p2l_checksum, pool, pool);
  SVN_ERR(svn_io_file_write_full(file, footer->data, footer->len, ((void*)0),
                                 pool));

  footer_length = footer->len;
  SVN_ERR_ASSERT(footer_length == footer->len);
  SVN_ERR(svn_io_file_write_full(file, &footer_length, 1, ((void*)0), pool));

  return SVN_NO_ERROR;
}
