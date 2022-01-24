#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_x__reps_t ;
typedef  int /*<<< orphan*/  svn_fs_x__rep_extractor_t ;
struct TYPE_15__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; } ;
typedef  TYPE_2__ svn_fs_x__pair_cache_key_t ;
struct TYPE_16__ {int /*<<< orphan*/  offset; TYPE_1__* items; } ;
typedef  TYPE_3__ svn_fs_x__p2l_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/  reps_container_cache; } ;
typedef  TYPE_4__ svn_fs_x__data_t ;
struct TYPE_18__ {TYPE_4__* fsap_data; } ;
typedef  TYPE_5__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_14__ {int /*<<< orphan*/  change_set; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(svn_fs_x__rep_extractor_t **extractor,
                          svn_fs_t *fs,
                          svn_fs_x__revision_file_t *rev_file,
                          svn_fs_x__p2l_entry_t* entry,
                          apr_uint32_t sub_item,
                          svn_boolean_t must_read,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_x__reps_t *container;
  svn_stream_t *stream;
  svn_fs_x__pair_cache_key_t key;
  svn_revnum_t revision = FUNC4(entry->items[0].change_set);

  key.revision = FUNC5(fs, revision);
  key.second = entry->offset;

  /* already in cache? */
  if (!must_read)
    {
      svn_boolean_t is_cached = FALSE;
      FUNC0(FUNC2(&is_cached, ffd->reps_container_cache,
                                 &key, scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  FUNC0(FUNC1(&stream, fs, rev_file, entry, scratch_pool));

  /* read noderevs from revision file */
  FUNC0(FUNC6(&container, stream, result_pool,
                                        scratch_pool));

  /* extract requested data */

  if (must_read)
    FUNC0(FUNC7(extractor, fs, container, sub_item,
                               result_pool));

  FUNC0(FUNC3(ffd->reps_container_cache, &key, container,
                         scratch_pool));

  return SVN_NO_ERROR;
}