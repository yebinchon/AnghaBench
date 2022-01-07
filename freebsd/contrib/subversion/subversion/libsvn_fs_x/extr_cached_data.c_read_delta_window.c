
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_txdelta_window_t ;
typedef int svn_stream_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_11__ {int change_set; } ;
struct TYPE_10__ {int chunk_index; scalar_t__ start; scalar_t__ current; scalar_t__ size; int ver; TYPE_5__ rep_id; TYPE_9__* sfile; scalar_t__ window_cache; } ;
typedef TYPE_1__ rep_state_t ;
typedef int apr_pool_t ;
typedef void* apr_off_t ;
typedef int apr_file_t ;
struct TYPE_12__ {int fs; int * rfile; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_X__ITEM_TYPE_ANY_REP ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int auto_open_shared_file (TYPE_9__*) ;
 int auto_read_diff_version (TYPE_1__*,int *) ;
 int auto_set_start_offset (TYPE_1__*,int *) ;
 int block_read (int *,int ,TYPE_5__*,int *,int *,int *,int *) ;
 int dbg__log_access (int ,TYPE_5__*,int *,int ,int *) ;
 int get_cached_window (int **,TYPE_1__*,int,int*,int *,int *) ;
 int set_cached_window (int *,TYPE_1__*,void*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_fs_x__is_revision (int ) ;
 int svn_fs_x__rev_file_get (int **,int *) ;
 int svn_fs_x__rev_file_offset (void**,int *) ;
 int svn_fs_x__rev_file_seek (int *,int *,void*) ;
 int svn_fs_x__rev_file_stream (int **,int *) ;
 int svn_io_file_get_offset (void**,int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_txdelta_read_svndiff_window (int **,int *,int ,int *) ;
 int svn_txdelta_skip_svndiff_window (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_delta_window(svn_txdelta_window_t **nwin, int this_chunk,
                  rep_state_t *rs, apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_boolean_t is_cached;
  apr_off_t start_offset;
  apr_off_t end_offset;
  apr_pool_t *iterpool;
  svn_stream_t *stream;
  svn_fs_x__revision_file_t *file;
  svn_boolean_t cacheable = rs->chunk_index == 0
                         && svn_fs_x__is_revision(rs->rep_id.change_set)
                         && rs->window_cache;

  SVN_ERR_ASSERT(rs->chunk_index <= this_chunk);

  SVN_ERR(dbg__log_access(rs->sfile->fs, &rs->rep_id, ((void*)0),
                          SVN_FS_X__ITEM_TYPE_ANY_REP, scratch_pool));


  if (cacheable)
    {
      SVN_ERR(get_cached_window(nwin, rs, this_chunk, &is_cached,
                                result_pool, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }


  SVN_ERR(auto_open_shared_file(rs->sfile));
  file = rs->sfile->rfile;




  if (cacheable)
    {
      SVN_ERR(block_read(((void*)0), rs->sfile->fs, &rs->rep_id, file, ((void*)0),
                         result_pool, scratch_pool));



      SVN_ERR(get_cached_window(nwin, rs, this_chunk, &is_cached,
                                result_pool, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }



  SVN_ERR(auto_set_start_offset(rs, scratch_pool));
  SVN_ERR(auto_read_diff_version(rs, scratch_pool));



  start_offset = rs->start + rs->current;
  SVN_ERR(svn_fs_x__rev_file_seek(file, ((void*)0), start_offset));


  iterpool = svn_pool_create(scratch_pool);
  while (rs->chunk_index < this_chunk)
    {
      apr_file_t *apr_file;
      svn_pool_clear(iterpool);

      SVN_ERR(svn_fs_x__rev_file_get(&apr_file, file));
      SVN_ERR(svn_txdelta_skip_svndiff_window(apr_file, rs->ver, iterpool));
      rs->chunk_index++;
      SVN_ERR(svn_io_file_get_offset(&start_offset, apr_file, iterpool));

      rs->current = start_offset - rs->start;
      if (rs->current >= rs->size)
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Reading one svndiff window read "
                                  "beyond the end of the "
                                  "representation"));
    }
  svn_pool_destroy(iterpool);


  SVN_ERR(svn_fs_x__rev_file_stream(&stream, file));
  SVN_ERR(svn_txdelta_read_svndiff_window(nwin, stream, rs->ver,
                                          result_pool));
  SVN_ERR(svn_fs_x__rev_file_offset(&end_offset, file));
  rs->current = end_offset - rs->start;
  if (rs->current > rs->size)
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Reading one svndiff window read beyond "
                              "the end of the representation"));



  if (cacheable)
    SVN_ERR(set_cached_window(*nwin, rs, start_offset, scratch_pool));

  return SVN_NO_ERROR;
}
