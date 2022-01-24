#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_8__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_1__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_fs_path_change2_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
struct TYPE_9__ {scalar_t__ format; } ;
typedef  TYPE_2__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_10__ {int nelts; } ;
typedef  TYPE_3__ apr_array_header_t ;
struct TYPE_11__ {char* key; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 TYPE_6__ FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_FS__MIN_KIND_IN_CHANGED_FORMAT ; 
 scalar_t__ SVN_FS_FS__MIN_MERGEINFO_IN_CHANGED_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_sort__item_t ; 
 int /*<<< orphan*/  svn_sort_compare_items_lexically ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_stream_t *stream,
                         svn_fs_t *fs,
                         apr_hash_t *changes,
                         svn_boolean_t terminate_list,
                         apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC3(scratch_pool);
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t include_node_kinds =
      ffd->format >= SVN_FS_FS__MIN_KIND_IN_CHANGED_FORMAT;
  svn_boolean_t include_mergeinfo_mods =
      ffd->format >= SVN_FS_FS__MIN_MERGEINFO_IN_CHANGED_FORMAT;
  apr_array_header_t *sorted_changed_paths;
  int i;

  /* For the sake of the repository administrator sort the changes so
     that the final file is deterministic and repeatable, however the
     rest of the FSFS code doesn't require any particular order here.

     Also, this sorting is only effective in writing all entries with
     a single call as write_final_changed_path_info() does.  For the
     list being written incrementally during transaction, we actually
     *must not* change the order of entries from different calls.
   */
  sorted_changed_paths = FUNC5(changes,
                                        svn_sort_compare_items_lexically,
                                        scratch_pool);

  /* Write all items to disk in the new order. */
  for (i = 0; i < sorted_changed_paths->nelts; ++i)
    {
      svn_fs_path_change2_t *change;
      const char *path;

      FUNC2(iterpool);

      change = FUNC0(sorted_changed_paths, i, svn_sort__item_t).value;
      path = FUNC0(sorted_changed_paths, i, svn_sort__item_t).key;

      /* Write out the new entry into the final rev-file. */
      FUNC1(FUNC7(stream, path, change, include_node_kinds,
                                 include_mergeinfo_mods, iterpool));
    }

  if (terminate_list)
    FUNC6(stream, "\n");

  FUNC4(iterpool);

  return SVN_NO_ERROR;
}