
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ packed_len; scalar_t__ target_len; } ;
typedef TYPE_2__ window_sizes_t ;
struct TYPE_13__ {scalar_t__ tview_len; } ;
typedef TYPE_3__ svn_txdelta_window_t ;
typedef int svn_stream_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_14__ {int current; int size; int start; int chunk_index; TYPE_1__* sfile; int ver; } ;
typedef TYPE_4__ rep_state_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_11__ {int * rfile; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int get_cached_window_sizes (TYPE_2__**,TYPE_4__*,scalar_t__*,int *) ;
 int set_cached_window (TYPE_3__*,TYPE_4__*,int,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_x__rev_file_offset (int*,int *) ;
 int svn_fs_x__rev_file_seek (int *,int*,int) ;
 int svn_fs_x__rev_file_stream (int **,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_txdelta_read_svndiff_window (TYPE_3__**,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
cache_windows(svn_filesize_t *fulltext_len,
              svn_fs_t *fs,
              rep_state_t *rs,
              apr_off_t max_offset,
              apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  *fulltext_len = 0;

  while (rs->current < rs->size)
    {
      svn_boolean_t is_cached = FALSE;
      window_sizes_t *window_sizes;

      svn_pool_clear(iterpool);
      if (max_offset != -1 && rs->start + rs->current >= max_offset)
        {
          svn_pool_destroy(iterpool);
          return SVN_NO_ERROR;
        }



      SVN_ERR(get_cached_window_sizes(&window_sizes, rs, &is_cached,
                                      iterpool));
      if (is_cached)
        {
          *fulltext_len += window_sizes->target_len;
          rs->current += window_sizes->packed_len;
        }
      else
        {
          svn_txdelta_window_t *window;
          svn_fs_x__revision_file_t *file = rs->sfile->rfile;
          svn_stream_t *stream;
          apr_off_t start_offset = rs->start + rs->current;
          apr_off_t end_offset;
          apr_off_t block_start;


          SVN_ERR(svn_fs_x__rev_file_stream(&stream, file));
          SVN_ERR(svn_fs_x__rev_file_seek(file, &block_start, start_offset));
          SVN_ERR(svn_txdelta_read_svndiff_window(&window, stream, rs->ver,
                                                  iterpool));


          *fulltext_len += window->tview_len;


          SVN_ERR(svn_fs_x__rev_file_offset(&end_offset, rs->sfile->rfile));
          rs->current = end_offset - rs->start;
          if (rs->current > rs->size)
            return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                          _("Reading one svndiff window read beyond "
                                      "the end of the representation"));



          if (!is_cached)
            SVN_ERR(set_cached_window(window, rs, start_offset, iterpool));
        }

      rs->chunk_index++;
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
