
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_revnum_t ;
struct TYPE_8__ {TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_9__ {int file; scalar_t__ is_packed; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int max_files_per_dir; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int buffer ;
typedef int apr_size_t ;
typedef int apr_seek_where_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int APR_END ;
 int APR_SET ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int aligned_seek (TYPE_1__*,int ,int *,int,int *) ;
 int svn_fs_fs__get_packed_offset (int*,TYPE_1__*,int,int *) ;
 int svn_fs_fs__parse_revision_trailer (int*,int*,int *,int) ;
 int svn_io_file_read_full2 (int ,char*,int,int *,int *,int *) ;
 int svn_io_file_seek (int ,int ,int*,int *) ;
 int * svn_stringbuf_ncreate (char*,int,int *) ;

__attribute__((used)) static svn_error_t *
get_root_changes_offset(apr_off_t *root_offset,
                        apr_off_t *changes_offset,
                        svn_fs_fs__revision_file_t *rev_file,
                        svn_fs_t *fs,
                        svn_revnum_t rev,
                        apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  apr_off_t rev_offset;
  apr_seek_where_t seek_relative;
  svn_stringbuf_t *trailer;
  char buffer[64];
  apr_off_t start;
  apr_off_t end;
  apr_size_t len;
  if (rev_file->is_packed && ((rev + 1) % ffd->max_files_per_dir != 0))
    {
      SVN_ERR(svn_fs_fs__get_packed_offset(&end, fs, rev + 1, pool));
      seek_relative = APR_SET;
    }
  else
    {
      seek_relative = APR_END;
      end = 0;
    }


  if (rev_file->is_packed)
    SVN_ERR(svn_fs_fs__get_packed_offset(&rev_offset, fs, rev, pool));
  else
    rev_offset = 0;



  SVN_ERR(svn_io_file_seek(rev_file->file, seek_relative, &end, pool));

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


  SVN_ERR(aligned_seek(fs, rev_file->file, ((void*)0), start, pool));
  SVN_ERR(svn_io_file_read_full2(rev_file->file, buffer, len, ((void*)0), ((void*)0),
                                 pool));


  trailer = svn_stringbuf_ncreate(buffer, len, pool);
  SVN_ERR(svn_fs_fs__parse_revision_trailer(root_offset,
                                            changes_offset,
                                            trailer,
                                            rev));


  if (root_offset)
    *root_offset += rev_offset;
  if (changes_offset)
    *changes_offset += rev_offset;

  return SVN_NO_ERROR;
}
