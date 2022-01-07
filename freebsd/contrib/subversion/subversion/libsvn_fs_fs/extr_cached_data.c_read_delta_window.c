
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_12__ {int chunk_index; scalar_t__ start; scalar_t__ current; scalar_t__ size; int revision; int ver; TYPE_10__* sfile; int item_index; scalar_t__ raw_window_cache; } ;
typedef TYPE_1__ rep_state_t ;
typedef int apr_pool_t ;
typedef void* apr_off_t ;
struct TYPE_13__ {int stream; int file; } ;
struct TYPE_11__ {TYPE_7__* rfile; int fs; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_FS_FS__ITEM_TYPE_ANY_REP ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int auto_open_shared_file (TYPE_10__*) ;
 int auto_read_diff_version (TYPE_1__*,int *) ;
 int auto_set_start_offset (TYPE_1__*,int *) ;
 int block_read (int *,int ,int ,int ,TYPE_7__*,int *,int *) ;
 int dbg_log_access (int ,int ,int ,int *,int ,int *) ;
 int get_cached_window (int **,TYPE_1__*,int,scalar_t__*,int *,int *) ;
 int get_file_offset (void**,TYPE_1__*,int *) ;
 int rs_aligned_seek (TYPE_1__*,int *,void*,int *) ;
 int set_cached_window (int *,TYPE_1__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_txdelta_read_svndiff_window (int **,int ,int ,int *) ;
 int svn_txdelta_skip_svndiff_window (int ,int ,int *) ;
 scalar_t__ use_block_read (int ) ;

__attribute__((used)) static svn_error_t *
read_delta_window(svn_txdelta_window_t **nwin, int this_chunk,
                  rep_state_t *rs, apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_boolean_t is_cached;
  apr_off_t start_offset;
  apr_off_t end_offset;
  apr_pool_t *iterpool;

  SVN_ERR_ASSERT(rs->chunk_index <= this_chunk);

  SVN_ERR(dbg_log_access(rs->sfile->fs, rs->revision, rs->item_index,
                         ((void*)0), SVN_FS_FS__ITEM_TYPE_ANY_REP, scratch_pool));


  SVN_ERR(get_cached_window(nwin, rs, this_chunk, &is_cached,
                            result_pool, scratch_pool));
  if (is_cached)
    return SVN_NO_ERROR;


  SVN_ERR(auto_open_shared_file(rs->sfile));




  if ( rs->chunk_index == 0
      && SVN_IS_VALID_REVNUM(rs->revision)
      && use_block_read(rs->sfile->fs)
      && rs->raw_window_cache)
    {
      SVN_ERR(block_read(((void*)0), rs->sfile->fs, rs->revision, rs->item_index,
                         rs->sfile->rfile, result_pool, scratch_pool));



      SVN_ERR(get_cached_window(nwin, rs, this_chunk, &is_cached,
                                result_pool, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }



  SVN_ERR(auto_set_start_offset(rs, scratch_pool));
  SVN_ERR(auto_read_diff_version(rs, scratch_pool));



  start_offset = rs->start + rs->current;
  SVN_ERR(rs_aligned_seek(rs, ((void*)0), start_offset, scratch_pool));


  iterpool = svn_pool_create(scratch_pool);
  while (rs->chunk_index < this_chunk)
    {
      svn_pool_clear(iterpool);
      SVN_ERR(svn_txdelta_skip_svndiff_window(rs->sfile->rfile->file,
                                              rs->ver, iterpool));
      rs->chunk_index++;
      SVN_ERR(get_file_offset(&start_offset, rs, iterpool));
      rs->current = start_offset - rs->start;
      if (rs->current >= rs->size)
        return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                                _("Reading one svndiff window read "
                                  "beyond the end of the "
                                  "representation"));
    }
  svn_pool_destroy(iterpool);


  SVN_ERR(svn_txdelta_read_svndiff_window(nwin, rs->sfile->rfile->stream,
                                          rs->ver, result_pool));
  SVN_ERR(get_file_offset(&end_offset, rs, scratch_pool));
  rs->current = end_offset - rs->start;
  if (rs->current > rs->size)
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Reading one svndiff window read beyond "
                              "the end of the representation"));



  if (SVN_IS_VALID_REVNUM(rs->revision))
    SVN_ERR(set_cached_window(*nwin, rs, scratch_pool));

  return SVN_NO_ERROR;
}
