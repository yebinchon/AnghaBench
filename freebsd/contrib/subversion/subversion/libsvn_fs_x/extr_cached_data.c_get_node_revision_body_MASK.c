#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_28__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_fs_x__pair_cache_key_t ;
typedef  int /*<<< orphan*/  svn_fs_x__noderev_t ;
struct TYPE_29__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;
typedef  TYPE_2__ svn_fs_x__id_t ;
struct TYPE_30__ {int /*<<< orphan*/  node_revision_cache; scalar_t__ noderevs_container_cache; } ;
typedef  TYPE_3__ svn_fs_x__data_t ;
struct TYPE_31__ {TYPE_3__* fsap_data; } ;
typedef  TYPE_4__ svn_fs_t ;
struct TYPE_32__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_5__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (void**,TYPE_4__*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (TYPE_4__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (void**,scalar_t__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void**,scalar_t__*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_5__* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_x__noderevs_get_func ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC19(svn_fs_x__noderev_t **noderev_p,
                       svn_fs_t *fs,
                       const svn_fs_x__id_t *id,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_boolean_t is_cached = FALSE;
  svn_fs_x__data_t *ffd = fs->fsap_data;

  if (FUNC11(id->change_set))
    {
      apr_file_t *file;
      svn_stream_t *stream;

      /* This is a transaction node-rev.  Its storage logic is very
         different from that of rev / pack files. */
      err = FUNC17(&file,
                             FUNC14(fs, id,
                                                         scratch_pool,
                                                         scratch_pool),
                             APR_READ | APR_BUFFERED, APR_OS_DEFAULT,
                             scratch_pool);
      if (err && FUNC0(err->apr_err))
        {
          FUNC6(err);
          return FUNC7(FUNC3(fs, id));
        }
      else if (err)
        {
          return FUNC7(err);
        }

      /* Be sure to close the file ASAP. */
      stream = FUNC18(file, FALSE, scratch_pool);
      FUNC1(FUNC15(noderev_p, stream,
                                     result_pool, scratch_pool));
    }
  else
    {
      svn_fs_x__revision_file_t *revision_file;

      /* noderevs in rev / pack files can be cached */
      svn_revnum_t revision = FUNC9(id->change_set);
      svn_fs_x__pair_cache_key_t key;

      FUNC1(FUNC16(&revision_file, fs, revision,
                                      scratch_pool));

      /* First, try a noderevs container cache lookup. */
      if (   FUNC10(fs, revision)
          && ffd->noderevs_container_cache)
        {
          apr_off_t offset;
          apr_uint32_t sub_item;
          FUNC1(FUNC12(&offset, &sub_item, fs, revision_file,
                                        id, scratch_pool));
          key.revision = FUNC13(fs, revision);
          key.second = offset;

          FUNC1(FUNC5((void **)noderev_p, &is_cached,
                                         ffd->noderevs_container_cache, &key,
                                         svn_fs_x__noderevs_get_func,
                                         &sub_item, result_pool));
          if (is_cached)
            return SVN_NO_ERROR;
        }

      key.revision = revision;
      key.second = id->number;

      /* Not found or not applicable. Try a noderev cache lookup.
       * If that succeeds, we are done here. */
      FUNC1(FUNC4((void **) noderev_p,
                             &is_cached,
                             ffd->node_revision_cache,
                             &key,
                             result_pool));
      if (is_cached)
        return SVN_NO_ERROR;

      /* block-read will parse the whole block and will also return
         the one noderev that we need right now. */
      FUNC1(FUNC2((void **)noderev_p, fs,
                         id,
                         revision_file,
                         NULL,
                         result_pool,
                         scratch_pool));
      FUNC1(FUNC8(revision_file));
    }

  return SVN_NO_ERROR;
}