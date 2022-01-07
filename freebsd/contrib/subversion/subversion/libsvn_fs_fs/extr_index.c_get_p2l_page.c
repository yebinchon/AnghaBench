
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
struct TYPE_4__ {int p2l_stream; } ;
typedef TYPE_1__ svn_fs_fs__revision_file_t ;
typedef int svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_INDEX_CORRUPTION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_array_make (int *,int,int) ;
 int auto_open_p2l_index (TYPE_1__*,int *,int ) ;
 int packed_stream_get (scalar_t__*,int ) ;
 scalar_t__ packed_stream_offset (int ) ;
 int packed_stream_seek (int ,scalar_t__) ;
 int read_entry (int ,scalar_t__*,int *,scalar_t__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
get_p2l_page(apr_array_header_t **entries,
             svn_fs_fs__revision_file_t *rev_file,
             svn_fs_t *fs,
             svn_revnum_t start_revision,
             apr_off_t start_offset,
             apr_off_t next_offset,
             apr_off_t page_start,
             apr_uint64_t page_size,
             apr_pool_t *result_pool)
{
  apr_uint64_t value;
  apr_array_header_t *result
    = apr_array_make(result_pool, 16, sizeof(svn_fs_fs__p2l_entry_t));
  apr_off_t item_offset;
  apr_off_t offset;
  svn_revnum_t last_revision;
  apr_uint64_t last_compound;


  SVN_ERR(auto_open_p2l_index(rev_file, fs, start_revision));
  packed_stream_seek(rev_file->p2l_stream, start_offset);



  SVN_ERR(packed_stream_get(&value, rev_file->p2l_stream));
  item_offset = (apr_off_t)value;


  last_revision = start_revision;
  last_compound = 0;


  if (start_offset == next_offset)
    {


      SVN_ERR(read_entry(rev_file->p2l_stream, &item_offset,
                         &last_revision, &last_compound, result));
    }
  else
    {

      do
        {
          SVN_ERR(read_entry(rev_file->p2l_stream, &item_offset,
                             &last_revision, &last_compound, result));
          offset = packed_stream_offset(rev_file->p2l_stream);
        }
      while (offset < next_offset);



      if (offset != next_offset)
        return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
             _("P2L page description overlaps with next page description"));



      if (item_offset < page_start + page_size)
        {
          SVN_ERR(packed_stream_get(&value, rev_file->p2l_stream));
          item_offset = (apr_off_t)value;
          last_revision = start_revision;
          last_compound = 0;
          SVN_ERR(read_entry(rev_file->p2l_stream, &item_offset,
                             &last_revision, &last_compound, result));
        }
    }

  *entries = result;

  return SVN_NO_ERROR;
}
