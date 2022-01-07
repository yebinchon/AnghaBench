
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
struct TYPE_3__ {int file; int is_packed; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
typedef int buffer ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int APR_END ;
 int APR_SET ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__parse_revision_trailer (int*,int *,int *,int ) ;
 int svn_io_file_read_full2 (int ,char*,int,int *,int *,int *) ;
 int svn_io_file_seek (int ,int ,int*,int *) ;
 int * svn_stringbuf_ncreate (char*,int,int *) ;

__attribute__((used)) static svn_error_t *
recover_get_root_offset(apr_off_t *root_offset,
                        svn_revnum_t rev,
                        svn_fs_fs__revision_file_t *rev_file,
                        apr_pool_t *pool)
{
  char buffer[64];
  svn_stringbuf_t *trailer;
  apr_off_t start;
  apr_off_t end;
  apr_size_t len;

  SVN_ERR_ASSERT(!rev_file->is_packed);




  end = 0;
  SVN_ERR(svn_io_file_seek(rev_file->file, APR_END, &end, pool));

  if (end < sizeof(buffer))
    {
      len = (apr_size_t)end;
      start = 0;
    }
  else
    {
      len = sizeof(buffer);
      start = end - sizeof(buffer);
    }

  SVN_ERR(svn_io_file_seek(rev_file->file, APR_SET, &start, pool));
  SVN_ERR(svn_io_file_read_full2(rev_file->file, buffer, len,
                                 ((void*)0), ((void*)0), pool));

  trailer = svn_stringbuf_ncreate(buffer, len, pool);
  SVN_ERR(svn_fs_fs__parse_revision_trailer(root_offset, ((void*)0), trailer, rev));

  return SVN_NO_ERROR;
}
