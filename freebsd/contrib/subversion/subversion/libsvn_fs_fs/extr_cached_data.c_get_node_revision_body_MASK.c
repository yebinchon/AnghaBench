#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {TYPE_6__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
struct TYPE_28__ {int /*<<< orphan*/  stream; } ;
typedef  TYPE_2__ svn_fs_fs__revision_file_t ;
struct TYPE_29__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
typedef  TYPE_3__ svn_fs_fs__id_part_t ;
struct TYPE_30__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_4__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_31__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ pair_cache_key_t ;
typedef  int /*<<< orphan*/  node_revision_t ;
struct TYPE_32__ {scalar_t__ node_revision_cache; } ;
typedef  TYPE_6__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (void**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void**,scalar_t__*,scalar_t__,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 TYPE_4__* FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC18(node_revision_t **noderev_p,
                       svn_fs_t *fs,
                       const svn_fs_id_t *id,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_boolean_t is_cached = FALSE;
  fs_fs_data_t *ffd = fs->fsap_data;

  if (FUNC11(id))
    {
      apr_file_t *file;

      /* This is a transaction node-rev.  Its storage logic is very
         different from that of rev / pack files. */
      err = FUNC15(&file,
                             FUNC13(fs, id,
                             scratch_pool),
                             APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                             scratch_pool);
      if (err && FUNC0(err->apr_err))
        {
          FUNC8(err);
          return FUNC9(FUNC3(fs, id));
        }
      else if (err)
        {
          return FUNC9(err);
        }

      FUNC1(FUNC14(noderev_p,
                                      FUNC16(file,
                                                               FALSE,
                                                               scratch_pool),
                                      result_pool, scratch_pool));
    }
  else
    {
      svn_fs_fs__revision_file_t *revision_file;

      /* noderevs in rev / pack files can be cached */
      const svn_fs_fs__id_part_t *rev_item = FUNC12(id);
      pair_cache_key_t key = { 0 };
      key.revision = rev_item->revision;
      key.second = rev_item->number;

      /* Not found or not applicable. Try a noderev cache lookup.
       * If that succeeds, we are done here. */
      if (ffd->node_revision_cache)
        {
          FUNC1(FUNC6((void **) noderev_p,
                                 &is_cached,
                                 ffd->node_revision_cache,
                                 &key,
                                 result_pool));
          if (is_cached)
            return SVN_NO_ERROR;
        }

      /* read the data from disk */
      FUNC1(FUNC5(&revision_file, fs,
                                     rev_item->revision,
                                     rev_item->number,
                                     scratch_pool));

      if (FUNC17(fs))
        {
          /* block-read will parse the whole block and will also return
             the one noderev that we need right now. */
          FUNC1(FUNC2((void **)noderev_p, fs,
                             rev_item->revision,
                             rev_item->number,
                             revision_file,
                             result_pool,
                             scratch_pool));
        }
      else
        {
          /* physical addressing mode reading, parsing and caching */
          FUNC1(FUNC14(noderev_p,
                                          revision_file->stream,
                                          result_pool,
                                          scratch_pool));
          FUNC1(FUNC4(fs, *noderev_p, scratch_pool));

          /* The noderev is not in cache, yet. Add it, if caching has been enabled. */
          if (ffd->node_revision_cache)
            FUNC1(FUNC7(ffd->node_revision_cache,
                                   &key,
                                   *noderev_p,
                                   scratch_pool));
        }

      FUNC1(FUNC10(revision_file));
    }

  return SVN_NO_ERROR;
}