
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_11__ ;


struct TYPE_31__ {TYPE_7__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_32__ {scalar_t__ type; int header_size; } ;
typedef TYPE_2__ svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_33__ {int revision; TYPE_11__* rfile; TYPE_1__* fs; int * pool; } ;
typedef TYPE_3__ shared_file_t ;
struct TYPE_34__ {int revision; int expanded_size; int item_index; int txn_id; int size; } ;
typedef TYPE_4__ representation_t ;
struct TYPE_35__ {int revision; int ver; int start; int current; int header_size; TYPE_3__* sfile; int * combined_cache; int * window_cache; int * raw_window_cache; int item_index; int size; } ;
typedef TYPE_5__ rep_state_t ;
struct TYPE_36__ {int revision; int second; } ;
typedef TYPE_6__ pair_cache_key_t ;
struct TYPE_37__ {int min_unpacked_rev; int max_files_per_dir; scalar_t__ rep_header_cache; int * combined_window_cache; int * txdelta_window_cache; int * raw_window_cache; } ;
typedef TYPE_7__ fs_fs_data_t ;
typedef int apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_30__ {int stream; } ;


 int APR_SIZE_MAX ;
 int FALSE ;
 int MIN (int,int ) ;
 int SVN_DELTA_WINDOW_SIZE ;
 int SVN_ERR (int ) ;
 int SVN_FS_FS__ITEM_TYPE_ANY_REP ;
 scalar_t__ SVN_IS_VALID_REVNUM (int) ;
 int * SVN_NO_ERROR ;
 void* apr_pcalloc (int *,int) ;
 int auto_open_shared_file (TYPE_3__*) ;
 int block_read (int *,TYPE_1__*,int,int ,TYPE_11__*,int *,int *) ;
 int dbg_log_access (TYPE_1__*,int,int ,TYPE_2__*,int ,int *) ;
 int get_file_offset (int*,TYPE_5__*,int *) ;
 int open_and_seek_representation (TYPE_11__**,TYPE_1__*,TYPE_4__*,int *) ;
 int rs_aligned_seek (TYPE_5__*,int *,int ,int *) ;
 int svn_cache__get (void**,int*,scalar_t__,TYPE_6__*,int *) ;
 scalar_t__ svn_cache__is_cachable (int *,int ) ;
 int svn_cache__set (scalar_t__,TYPE_6__*,TYPE_2__*,int *) ;
 int svn_fs_fs__id_txn_used (int *) ;
 int svn_fs_fs__item_offset (int *,TYPE_1__*,TYPE_11__*,int,int *,int ,int *) ;
 int svn_fs_fs__read_rep_header (TYPE_2__**,int ,int *,int *) ;
 scalar_t__ svn_fs_fs__rep_plain ;
 scalar_t__ use_block_read (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
create_rep_state_body(rep_state_t **rep_state,
                      svn_fs_fs__rep_header_t **rep_header,
                      shared_file_t **shared_file,
                      representation_t *rep,
                      svn_fs_t *fs,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  rep_state_t *rs = apr_pcalloc(result_pool, sizeof(*rs));
  svn_fs_fs__rep_header_t *rh;
  svn_boolean_t is_cached = FALSE;
  apr_uint64_t estimated_window_storage;
  svn_boolean_t reuse_shared_file
    = shared_file && *shared_file && (*shared_file)->rfile
      && SVN_IS_VALID_REVNUM((*shared_file)->revision)
      && (*shared_file)->revision < ffd->min_unpacked_rev
      && rep->revision < ffd->min_unpacked_rev
      && ( ((*shared_file)->revision / ffd->max_files_per_dir)
          == (rep->revision / ffd->max_files_per_dir));

  pair_cache_key_t key;
  key.revision = rep->revision;
  key.second = rep->item_index;


  rs->size = rep->size;
  rs->revision = rep->revision;
  rs->item_index = rep->item_index;
  rs->raw_window_cache = use_block_read(fs) ? ffd->raw_window_cache : ((void*)0);
  rs->ver = -1;
  rs->start = -1;






  estimated_window_storage = 4 * (rep->expanded_size + SVN_DELTA_WINDOW_SIZE);
  estimated_window_storage = MIN(estimated_window_storage, APR_SIZE_MAX);

  rs->window_cache = ffd->txdelta_window_cache
                     && svn_cache__is_cachable(ffd->txdelta_window_cache,
                                       (apr_size_t)estimated_window_storage)
                   ? ffd->txdelta_window_cache
                   : ((void*)0);
  rs->combined_cache = ffd->combined_window_cache
                       && svn_cache__is_cachable(ffd->combined_window_cache,
                                       (apr_size_t)estimated_window_storage)
                     ? ffd->combined_window_cache
                     : ((void*)0);


  if (ffd->rep_header_cache && !svn_fs_fs__id_txn_used(&rep->txn_id))
    SVN_ERR(svn_cache__get((void **) &rh, &is_cached,
                           ffd->rep_header_cache, &key, result_pool));


  if (reuse_shared_file)
    {
      rs->sfile = *shared_file;
    }
  else
    {
      shared_file_t *file = apr_pcalloc(result_pool, sizeof(*file));
      file->revision = rep->revision;
      file->pool = result_pool;
      file->fs = fs;
      rs->sfile = file;


      if (shared_file)
        *shared_file = file;
    }


  if (!is_cached)
    {

      if (reuse_shared_file)
        {
          apr_off_t offset;




          rs->sfile = *shared_file;
          SVN_ERR(auto_open_shared_file(rs->sfile));
          SVN_ERR(svn_fs_fs__item_offset(&offset, fs, rs->sfile->rfile,
                                         rep->revision, ((void*)0), rep->item_index,
                                         scratch_pool));
          SVN_ERR(rs_aligned_seek(rs, ((void*)0), offset, scratch_pool));
        }
      else
        {



          SVN_ERR(open_and_seek_representation(&rs->sfile->rfile, fs, rep,
                                               result_pool));
        }

      SVN_ERR(svn_fs_fs__read_rep_header(&rh, rs->sfile->rfile->stream,
                                         result_pool, scratch_pool));
      SVN_ERR(get_file_offset(&rs->start, rs, result_pool));


      if (! svn_fs_fs__id_txn_used(&rep->txn_id))
        {
          if (use_block_read(fs))
            SVN_ERR(block_read(((void*)0), fs, rep->revision, rep->item_index,
                               rs->sfile->rfile, result_pool, scratch_pool));
          else
            if (ffd->rep_header_cache)
              SVN_ERR(svn_cache__set(ffd->rep_header_cache, &key, rh,
                                     scratch_pool));
        }
    }


  SVN_ERR(dbg_log_access(fs, rep->revision, rep->item_index, rh,
                         SVN_FS_FS__ITEM_TYPE_ANY_REP, scratch_pool));

  rs->header_size = rh->header_size;
  *rep_state = rs;
  *rep_header = rh;

  if (rh->type == svn_fs_fs__rep_plain)

    return SVN_NO_ERROR;


  rs->current = 4;

  return SVN_NO_ERROR;
}
