
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {unsigned char* data; size_t len; } ;
typedef TYPE_4__ svn_stringbuf_t ;
struct TYPE_12__ {int end; int start; int checksum; } ;
struct TYPE_11__ {int start; int end; int checksum; } ;
struct TYPE_10__ {int start_revision; } ;
struct TYPE_14__ {TYPE_3__ p2l_info; TYPE_2__ l2p_info; int pool; TYPE_1__ file_info; int file; int block_size; } ;
typedef TYPE_5__ svn_fs_x__revision_file_t ;
typedef int svn_error_t ;
typedef int footer_length ;
typedef int apr_off_t ;


 int APR_END ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int auto_open (TYPE_5__*) ;
 int svn_fs_x__parse_footer (int*,int *,int *,int *,TYPE_4__*,int ,int,int ) ;
 int svn_io_file_aligned_seek (int ,int ,int *,int,int ) ;
 int svn_io_file_read_full2 (int ,unsigned char*,unsigned char,size_t*,int *,int ) ;
 int svn_io_file_seek (int ,int ,int*,int ) ;
 TYPE_4__* svn_stringbuf_create_ensure (unsigned char,int ) ;

__attribute__((used)) static svn_error_t *
auto_read_footer(svn_fs_x__revision_file_t *file)
{
  if (file->l2p_info.start == -1)
    {
      apr_off_t filesize = 0;
      unsigned char footer_length;
      svn_stringbuf_t *footer;


      SVN_ERR(auto_open(file));
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


      SVN_ERR(svn_fs_x__parse_footer(&file->l2p_info.start,
                                     &file->l2p_info.checksum,
                                     &file->p2l_info.start,
                                     &file->p2l_info.checksum,
                                     footer, file->file_info.start_revision,
                                     filesize - footer_length - 1, file->pool));
      file->l2p_info.end = file->p2l_info.start;
      file->p2l_info.end = filesize - footer_length - 1;
    }

  return SVN_NO_ERROR;
}
