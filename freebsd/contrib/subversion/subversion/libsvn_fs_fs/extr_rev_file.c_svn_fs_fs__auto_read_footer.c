
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* data; size_t len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_7__ {int l2p_offset; int footer_offset; int pool; int start_revision; int p2l_checksum; int p2l_offset; int l2p_checksum; int file; int block_size; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef int footer_length ;
typedef int apr_off_t ;


 int APR_END ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__parse_footer (int*,int *,int *,int *,TYPE_1__*,int ,int,int ) ;
 int svn_io_file_aligned_seek (int ,int ,int *,int,int ) ;
 int svn_io_file_read_full2 (int ,unsigned char*,unsigned char,size_t*,int *,int ) ;
 int svn_io_file_seek (int ,int ,int*,int ) ;
 TYPE_1__* svn_stringbuf_create_ensure (unsigned char,int ) ;

svn_error_t *
svn_fs_fs__auto_read_footer(svn_fs_fs__revision_file_t *file)
{
  if (file->l2p_offset == -1)
    {
      apr_off_t filesize = 0;
      unsigned char footer_length;
      svn_stringbuf_t *footer;


      SVN_ERR(svn_io_file_seek(file->file, APR_END, &filesize, file->pool));


      SVN_ERR(svn_io_file_aligned_seek(file->file, file->block_size, ((void*)0),
                                       filesize - 1, file->pool));
      SVN_ERR(svn_io_file_read_full2(file->file, &footer_length,
                                     sizeof(footer_length), ((void*)0), ((void*)0),
                                     file->pool));


      footer = svn_stringbuf_create_ensure(footer_length, file->pool);
      SVN_ERR(svn_io_file_aligned_seek(file->file, file->block_size, ((void*)0),
                                       filesize - 1 - footer_length,
                                       file->pool));
      SVN_ERR(svn_io_file_read_full2(file->file, footer->data, footer_length,
                                     &footer->len, ((void*)0), file->pool));
      footer->data[footer->len] = '\0';


      SVN_ERR(svn_fs_fs__parse_footer(&file->l2p_offset, &file->l2p_checksum,
                                      &file->p2l_offset, &file->p2l_checksum,
                                      footer, file->start_revision,
                                      filesize - footer_length - 1,
                                      file->pool));
      file->footer_offset = filesize - footer_length - 1;
    }

  return SVN_NO_ERROR;
}
