
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_x__packed_number_stream_t ;
typedef int svn_fs_x__p2l_entry_t ;
typedef int svn_fs_t ;
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
 int packed_stream_get (scalar_t__*,int *) ;
 scalar_t__ packed_stream_offset (int *) ;
 int packed_stream_seek (int *,scalar_t__) ;
 int read_entry (int *,scalar_t__*,int ,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__rev_file_p2l_index (int **,int *) ;

__attribute__((used)) static svn_error_t *
get_p2l_page(apr_array_header_t **entries,
             svn_fs_x__revision_file_t *rev_file,
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
    = apr_array_make(result_pool, 16, sizeof(svn_fs_x__p2l_entry_t));
  apr_off_t item_offset;
  apr_off_t offset;
  svn_fs_x__packed_number_stream_t *stream;


  SVN_ERR(svn_fs_x__rev_file_p2l_index(&stream, rev_file));
  packed_stream_seek(stream, start_offset);



  SVN_ERR(packed_stream_get(&value, stream));
  item_offset = (apr_off_t)value;


  if (start_offset == next_offset)
    {


      SVN_ERR(read_entry(stream, &item_offset, start_revision, result));
    }
  else
    {

      do
        {
          SVN_ERR(read_entry(stream, &item_offset, start_revision, result));
          offset = packed_stream_offset(stream);
        }
      while (offset < next_offset);



      if (offset != next_offset)
        return svn_error_create(SVN_ERR_FS_INDEX_CORRUPTION, ((void*)0),
             _("P2L page description overlaps with next page description"));



      if (item_offset < page_start + page_size)
        {
          SVN_ERR(packed_stream_get(&value, stream));
          item_offset = (apr_off_t)value;
          SVN_ERR(read_entry(stream, &item_offset,
                             start_revision, result));
        }
    }

  *entries = result;

  return SVN_NO_ERROR;
}
