#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  void* svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_fs_x__txn_id_t ;
struct TYPE_20__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
struct TYPE_22__ {TYPE_1__ id; } ;
typedef  TYPE_3__ svn_fs_x__representation_t ;
struct TYPE_23__ {TYPE_3__* data_rep; int /*<<< orphan*/  noderev_id; } ;
typedef  TYPE_4__ svn_fs_x__noderev_t ;
typedef  int /*<<< orphan*/  svn_fs_x__id_t ;
struct TYPE_24__ {char const* name; void* kind; int /*<<< orphan*/  id; } ;
typedef  TYPE_5__ svn_fs_x__dirent_t ;
struct TYPE_25__ {scalar_t__ txn_filesize; int /*<<< orphan*/ * entries; } ;
typedef  TYPE_6__ svn_fs_x__dir_data_t ;
struct TYPE_26__ {int /*<<< orphan*/  dir_cache; } ;
typedef  TYPE_7__ svn_fs_x__data_t ;
struct TYPE_27__ {TYPE_7__* fsap_data; } ;
typedef  TYPE_8__ svn_fs_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_28__ {char const* name; TYPE_2__* new_entry; scalar_t__ txn_filesize; } ;
typedef  TYPE_9__ replace_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;
struct TYPE_21__ {char const* name; int /*<<< orphan*/  id; void* kind; } ;

/* Variables and functions */
 int APR_APPEND ; 
 int APR_BUFFERED ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_X__ITEM_INDEX_UNUSED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_fs_x__extract_dir_filesize ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,TYPE_8__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_x__replace_dir_entry ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC21(svn_fs_t *fs,
                    svn_fs_x__txn_id_t txn_id,
                    svn_fs_x__noderev_t *parent_noderev,
                    const char *name,
                    const svn_fs_x__id_t *id,
                    svn_node_kind_t kind,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_t *rep = parent_noderev->data_rep;
  const char *filename
    = FUNC8(fs, &parent_noderev->noderev_id,
                                       scratch_pool, scratch_pool);
  apr_file_t *file;
  svn_stream_t *out;
  svn_filesize_t filesize;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  apr_pool_t *subpool = FUNC16(scratch_pool);
  const svn_fs_x__id_t *key = &(parent_noderev->noderev_id);
  svn_fs_x__dirent_t entry;

  if (!rep || !FUNC7(rep->id.change_set))
    {
      apr_array_header_t *entries;
      svn_fs_x__dir_data_t dir_data;

      /* Before we can modify the directory, we need to dump its old
         contents into a mutable representation file. */
      FUNC0(FUNC10(&entries, fs, parent_noderev,
                                         subpool, subpool));
      FUNC0(FUNC13(&file, filename,
                               APR_WRITE | APR_CREATE | APR_BUFFERED,
                               APR_OS_DEFAULT, scratch_pool));
      out = FUNC18(file, TRUE, scratch_pool);
      FUNC0(FUNC19(entries, out, subpool));

      /* Provide the parent with a data rep if it had none before
         (directories so far empty). */
      if (!rep)
        {
          rep = FUNC1(result_pool, sizeof(*rep));
          parent_noderev->data_rep = rep;
        }

      /* Mark the node-rev's data rep as mutable. */
      rep->id.change_set = FUNC5(txn_id);
      rep->id.number = SVN_FS_X__ITEM_INDEX_UNUSED;

      /* Save noderev to disk. */
      FUNC0(FUNC9(fs, parent_noderev, subpool));

      /* Immediately populate the txn dir cache to avoid re-reading
       * the file we just wrote. */

      /* Flush APR buffers. */
      FUNC0(FUNC12(file, subpool));

      /* Obtain final file size to update txn_dir_cache. */
      FUNC0(FUNC14(&filesize, file, subpool));

      /* Store in the cache. */
      dir_data.entries = entries;
      dir_data.txn_filesize = filesize;
      FUNC0(FUNC3(ffd->dir_cache, key, &dir_data, subpool));

      FUNC15(subpool);
    }
  else
    {
      svn_boolean_t found;
      svn_filesize_t cached_filesize;

      /* The directory rep is already mutable, so just open it for append. */
      FUNC0(FUNC13(&file, filename, APR_WRITE | APR_APPEND,
                               APR_OS_DEFAULT, subpool));
      out = FUNC18(file, TRUE, subpool);

      /* If the cache contents is stale, drop it.
       *
       * Note that the directory file is append-only, i.e. if the size
       * did not change, the contents didn't either. */

      /* Get the file size that corresponds to the cached contents
       * (if any). */
      FUNC0(FUNC2((void **)&cached_filesize, &found,
                                     ffd->dir_cache, key,
                                     svn_fs_x__extract_dir_filesize,
                                     NULL, subpool));

      /* File size info still matches?
       * If not, we need to drop the cache entry. */
      if (found)
        {
          FUNC0(FUNC14(&filesize, file, subpool));

          if (cached_filesize != filesize)
            FUNC0(FUNC3(ffd->dir_cache, key, NULL, subpool));
        }
    }

  /* Append an incremental hash entry for the entry change.
     A deletion is represented by an "unused" noderev-id. */
  if (id)
    entry.id = *id;
  else
    FUNC6(&entry.id);

  entry.name = name;
  entry.kind = kind;

  FUNC0(FUNC20(&entry, out, subpool));

  /* Flush APR buffers. */
  FUNC0(FUNC12(file, subpool));

  /* Obtain final file size to update txn_dir_cache. */
  FUNC0(FUNC14(&filesize, file, subpool));

  /* Close file. */
  FUNC0(FUNC11(file, subpool));
  FUNC15(subpool);

  /* update directory cache */
    {
      /* build parameters: name, new entry, new file size  */
      replace_baton_t baton;

      baton.name = name;
      baton.new_entry = NULL;
      baton.txn_filesize = filesize;

      if (id)
        {
          baton.new_entry = FUNC1(subpool, sizeof(*baton.new_entry));
          baton.new_entry->name = name;
          baton.new_entry->kind = kind;
          baton.new_entry->id = *id;
        }

      /* actually update the cached directory (if cached) */
      FUNC0(FUNC4(ffd->dir_cache, key,
                                     svn_fs_x__replace_dir_entry, &baton,
                                     subpool));
    }

  FUNC17(subpool);
  return SVN_NO_ERROR;
}