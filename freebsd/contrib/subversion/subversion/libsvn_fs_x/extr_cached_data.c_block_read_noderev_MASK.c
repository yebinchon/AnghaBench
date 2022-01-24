#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_x__pair_cache_key_t ;
struct TYPE_8__ {int item_count; } ;
typedef  TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_fs_x__noderev_t ;
struct TYPE_9__ {int /*<<< orphan*/  node_revision_cache; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(svn_fs_x__noderev_t **noderev_p,
                   svn_fs_t *fs,
                   svn_fs_x__revision_file_t *rev_file,
                   svn_fs_x__p2l_entry_t* entry,
                   svn_fs_x__pair_cache_key_t *key,
                   svn_boolean_t must_read,
                   apr_pool_t *result_pool,
                   apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_stream_t *stream;

  /* we don't support containers, yet */
  FUNC1(entry->item_count == 1);

  /* already in cache? */
  if (!must_read)
    {
      svn_boolean_t is_cached = FALSE;
      FUNC0(FUNC3(&is_cached, ffd->node_revision_cache, key,
                                 scratch_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  FUNC0(FUNC2(&stream, fs, rev_file, entry, scratch_pool));

  /* read node rev from revision file */

  FUNC0(FUNC5(noderev_p, stream, result_pool,
                                 scratch_pool));
  FUNC0(FUNC4(ffd->node_revision_cache, key, *noderev_p,
                         scratch_pool));

  return SVN_NO_ERROR;
}