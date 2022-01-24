#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_17__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; } ;
typedef  TYPE_1__ svn_fs_x__pair_cache_key_t ;
struct TYPE_18__ {int /*<<< orphan*/  mergeinfo_count; } ;
typedef  TYPE_2__ svn_fs_x__noderev_t ;
struct TYPE_19__ {int /*<<< orphan*/  change_set; } ;
typedef  TYPE_3__ svn_fs_x__id_t ;
struct TYPE_20__ {scalar_t__ noderevs_container_cache; } ;
typedef  TYPE_4__ svn_fs_x__data_t ;
struct TYPE_21__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_5__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (void**,scalar_t__*,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_5__*,TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_fs_x__mergeinfo_count_get_func ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(apr_int64_t *count,
                              svn_fs_t *fs,
                              const svn_fs_x__id_t *id,
                              apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *noderev;

  /* If we want a full acccess log, we need to provide full data and
     cannot take shortcuts here. */
#if !defined(SVN_FS_X__LOG_ACCESS)

  /* First, try a noderevs container cache lookup. */
  if (! FUNC5(id->change_set))
    {
      /* noderevs in rev / pack files can be cached */
      svn_fs_x__data_t *ffd = fs->fsap_data;
      svn_revnum_t revision = FUNC3(id->change_set);

      svn_fs_x__revision_file_t *rev_file;
      FUNC0(FUNC8(&rev_file, fs, revision,
                                      scratch_pool));

      if (   FUNC4(fs, revision)
          && ffd->noderevs_container_cache)
        {
          svn_fs_x__pair_cache_key_t key;
          apr_off_t offset;
          apr_uint32_t sub_item;
          svn_boolean_t is_cached;

          FUNC0(FUNC6(&offset, &sub_item, fs, rev_file,
                                        id, scratch_pool));
          key.revision = FUNC7(fs, revision);
          key.second = offset;

          FUNC0(FUNC1((void **)count, &is_cached,
                                         ffd->noderevs_container_cache, &key,
                                         svn_fs_x__mergeinfo_count_get_func,
                                         &sub_item, scratch_pool));
          if (is_cached)
            return SVN_NO_ERROR;
        }
    }
#endif

  /* fallback to the naive implementation handling all edge cases */
  FUNC0(FUNC2(&noderev, fs, id, scratch_pool,
                                      scratch_pool));
  *count = noderev->mergeinfo_count;

  return SVN_NO_ERROR;
}