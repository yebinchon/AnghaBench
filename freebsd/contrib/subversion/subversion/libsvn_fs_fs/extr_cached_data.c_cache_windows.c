
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int member_0; } ;
typedef TYPE_4__ window_cache_key_t ;
typedef int svn_fs_t ;
struct TYPE_18__ {int len; char* data; } ;
struct TYPE_20__ {int end_offset; int ver; TYPE_3__ window; } ;
typedef TYPE_5__ svn_fs_fs__raw_cached_window_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_21__ {int current; int size; int chunk_index; int raw_window_cache; int ver; TYPE_2__* sfile; int start; int window_cache; } ;
typedef TYPE_6__ rep_state_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_17__ {TYPE_1__* rfile; } ;
struct TYPE_16__ {int file; int stream; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_palloc (int *,int) ;
 int auto_read_diff_version (TYPE_6__*,int *) ;
 int get_raw_window_end ;
 int get_txdelta_window_end ;
 TYPE_4__* get_window_key (TYPE_4__*,TYPE_6__*) ;
 int rs_aligned_seek (TYPE_6__*,int *,int,int *) ;
 int svn_cache__get_partial (void**,scalar_t__*,int ,TYPE_4__*,int ,int *,int *) ;
 int svn_cache__set (int ,TYPE_4__*,TYPE_5__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_io_file_read_full2 (int ,char*,int,int *,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_txdelta__read_raw_window_len (int*,int ,int *) ;

__attribute__((used)) static svn_error_t *
cache_windows(svn_fs_t *fs,
              rep_state_t *rs,
              apr_off_t max_offset,
              apr_pool_t *pool)
{
  apr_pool_t *iterpool = svn_pool_create(pool);

  SVN_ERR(auto_read_diff_version(rs, iterpool));

  while (rs->current < rs->size)
    {
      apr_off_t end_offset;
      svn_boolean_t found = FALSE;
      window_cache_key_t key = { 0 };

      svn_pool_clear(iterpool);

      if (max_offset != -1 && rs->start + rs->current >= max_offset)
        {
          svn_pool_destroy(iterpool);
          return SVN_NO_ERROR;
        }




      SVN_ERR(svn_cache__get_partial((void **) &end_offset, &found,
                                     rs->raw_window_cache,
                                     get_window_key(&key, rs),
                                     get_raw_window_end, ((void*)0),
                                     iterpool));
      if (! found)
        SVN_ERR(svn_cache__get_partial((void **) &end_offset, &found,
                                       rs->window_cache, &key,
                                       get_txdelta_window_end, ((void*)0),
                                       iterpool));

      if (found)
        {
          rs->current = end_offset;
        }
      else
        {

          svn_fs_fs__raw_cached_window_t window;
          apr_off_t start_offset = rs->start + rs->current;
          apr_size_t window_len;
          char *buf;


          SVN_ERR(rs_aligned_seek(rs, ((void*)0), start_offset, iterpool));
          SVN_ERR(svn_txdelta__read_raw_window_len(&window_len,
                                                   rs->sfile->rfile->stream,
                                                   iterpool));


          buf = apr_palloc(iterpool, window_len + 1);
          SVN_ERR(rs_aligned_seek(rs, ((void*)0), start_offset, iterpool));
          SVN_ERR(svn_io_file_read_full2(rs->sfile->rfile->file, buf,
                                         window_len, ((void*)0), ((void*)0), iterpool));
          buf[window_len] = 0;


          rs->current += window_len;


          window.end_offset = rs->current;
          window.window.len = window_len;
          window.window.data = buf;
          window.ver = rs->ver;


          SVN_ERR(svn_cache__set(rs->raw_window_cache, &key, &window,
                                 iterpool));
        }

      if (rs->current > rs->size)
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Reading one svndiff window read beyond "
                                            "the end of the representation"));

      rs->chunk_index++;
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
