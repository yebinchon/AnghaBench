#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_11__ ;

/* Type definitions */
struct TYPE_31__ {TYPE_7__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
struct TYPE_32__ {scalar_t__ type; int /*<<< orphan*/  header_size; } ;
typedef  TYPE_2__ svn_fs_fs__rep_header_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_33__ {int revision; TYPE_11__* rfile; TYPE_1__* fs; int /*<<< orphan*/ * pool; } ;
typedef  TYPE_3__ shared_file_t ;
struct TYPE_34__ {int revision; int expanded_size; int /*<<< orphan*/  item_index; int /*<<< orphan*/  txn_id; int /*<<< orphan*/  size; } ;
typedef  TYPE_4__ representation_t ;
struct TYPE_35__ {int revision; int ver; int start; int current; int /*<<< orphan*/  header_size; TYPE_3__* sfile; int /*<<< orphan*/ * combined_cache; int /*<<< orphan*/ * window_cache; int /*<<< orphan*/ * raw_window_cache; int /*<<< orphan*/  item_index; int /*<<< orphan*/  size; } ;
typedef  TYPE_5__ rep_state_t ;
struct TYPE_36__ {int revision; int /*<<< orphan*/  second; } ;
typedef  TYPE_6__ pair_cache_key_t ;
struct TYPE_37__ {int min_unpacked_rev; int max_files_per_dir; scalar_t__ rep_header_cache; int /*<<< orphan*/ * combined_window_cache; int /*<<< orphan*/ * txdelta_window_cache; int /*<<< orphan*/ * raw_window_cache; } ;
typedef  TYPE_7__ fs_fs_data_t ;
typedef  int apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
struct TYPE_30__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SIZE_MAX ; 
 int FALSE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SVN_DELTA_WINDOW_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_FS__ITEM_TYPE_ANY_REP ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__**,TYPE_1__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void**,int*,scalar_t__,TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_6__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_11__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_fs_fs__rep_plain ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC17(rep_state_t **rep_state,
                      svn_fs_fs__rep_header_t **rep_header,
                      shared_file_t **shared_file,
                      representation_t *rep,
                      svn_fs_t *fs,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  rep_state_t *rs = FUNC3(result_pool, sizeof(*rs));
  svn_fs_fs__rep_header_t *rh;
  svn_boolean_t is_cached = FALSE;
  apr_uint64_t estimated_window_storage;

  /* If the hint is
   * - given,
   * - refers to a valid revision,
   * - refers to a packed revision,
   * - as does the rep we want to read, and
   * - refers to the same pack file as the rep
   * we can re-use the same, already open file object
   */
  svn_boolean_t reuse_shared_file
    =    shared_file && *shared_file && (*shared_file)->rfile
      && FUNC2((*shared_file)->revision)
      && (*shared_file)->revision < ffd->min_unpacked_rev
      && rep->revision < ffd->min_unpacked_rev
      && (   ((*shared_file)->revision / ffd->max_files_per_dir)
          == (rep->revision / ffd->max_files_per_dir));

  pair_cache_key_t key;
  key.revision = rep->revision;
  key.second = rep->item_index;

  /* continue constructing RS and RA */
  rs->size = rep->size;
  rs->revision = rep->revision;
  rs->item_index = rep->item_index;
  rs->raw_window_cache = FUNC16(fs) ? ffd->raw_window_cache : NULL;
  rs->ver = -1;
  rs->start = -1;

  /* Very long files stored as self-delta will produce a huge number of
     delta windows.  Don't cache them lest we don't thrash the cache.
     Since we don't know the depth of the delta chain, let's assume, the
     whole contents get rewritten 3 times.
   */
  estimated_window_storage = 4 * (rep->expanded_size + SVN_DELTA_WINDOW_SIZE);
  estimated_window_storage = FUNC0(estimated_window_storage, APR_SIZE_MAX);

  rs->window_cache =    ffd->txdelta_window_cache
                     && FUNC11(ffd->txdelta_window_cache,
                                       (apr_size_t)estimated_window_storage)
                   ? ffd->txdelta_window_cache
                   : NULL;
  rs->combined_cache =    ffd->combined_window_cache
                       && FUNC11(ffd->combined_window_cache,
                                       (apr_size_t)estimated_window_storage)
                     ? ffd->combined_window_cache
                     : NULL;

  /* cache lookup, i.e. skip reading the rep header if possible */
  if (ffd->rep_header_cache && !FUNC13(&rep->txn_id))
    FUNC1(FUNC10((void **) &rh, &is_cached,
                           ffd->rep_header_cache, &key, result_pool));

  /* initialize the (shared) FILE member in RS */
  if (reuse_shared_file)
    {
      rs->sfile = *shared_file;
    }
  else
    {
      shared_file_t *file = FUNC3(result_pool, sizeof(*file));
      file->revision = rep->revision;
      file->pool = result_pool;
      file->fs = fs;
      rs->sfile = file;

      /* remember the current file, if suggested by the caller */
      if (shared_file)
        *shared_file = file;
    }

  /* read rep header, if necessary */
  if (!is_cached)
    {
      /* ensure file is open and navigate to the start of rep header */
      if (reuse_shared_file)
        {
          apr_off_t offset;

          /* ... we can re-use the same, already open file object.
           * This implies that we don't read from a txn.
           */
          rs->sfile = *shared_file;
          FUNC1(FUNC4(rs->sfile));
          FUNC1(FUNC14(&offset, fs, rs->sfile->rfile,
                                         rep->revision, NULL, rep->item_index,
                                         scratch_pool));
          FUNC1(FUNC9(rs, NULL, offset, scratch_pool));
        }
      else
        {
          /* otherwise, create a new file object.  May or may not be
           * an in-txn file.
           */
          FUNC1(FUNC8(&rs->sfile->rfile, fs, rep,
                                               result_pool));
        }

      FUNC1(FUNC15(&rh, rs->sfile->rfile->stream,
                                         result_pool, scratch_pool));
      FUNC1(FUNC7(&rs->start, rs, result_pool));

      /* populate the cache if appropriate */
      if (! FUNC13(&rep->txn_id))
        {
          if (FUNC16(fs))
            FUNC1(FUNC5(NULL, fs, rep->revision, rep->item_index,
                               rs->sfile->rfile, result_pool, scratch_pool));
          else
            if (ffd->rep_header_cache)
              FUNC1(FUNC12(ffd->rep_header_cache, &key, rh,
                                     scratch_pool));
        }
    }

  /* finalize */
  FUNC1(FUNC6(fs, rep->revision, rep->item_index, rh,
                         SVN_FS_FS__ITEM_TYPE_ANY_REP, scratch_pool));

  rs->header_size = rh->header_size;
  *rep_state = rs;
  *rep_header = rh;

  if (rh->type == svn_fs_fs__rep_plain)
    /* This is a plaintext, so just return the current rep_state. */
    return SVN_NO_ERROR;

  /* skip "SVNx" diff marker */
  rs->current = 4;

  return SVN_NO_ERROR;
}