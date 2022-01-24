#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_11__ {int /*<<< orphan*/  item_index; int /*<<< orphan*/  revision; int /*<<< orphan*/  is_packed; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ svn_fs_x__representation_cache_key_t ;
typedef  int /*<<< orphan*/  svn_fs_x__rep_header_t ;
struct TYPE_12__ {scalar_t__ type; int item_count; TYPE_1__* items; } ;
typedef  TYPE_3__ svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_13__ {int /*<<< orphan*/  size; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_4__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  number; int /*<<< orphan*/  change_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SVN_FS_X__ITEM_TYPE_DIR_PROPS ; 
 scalar_t__ SVN_FS_X__ITEM_TYPE_FILE_REP ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC7(svn_filesize_t *packed_len,
                                    svn_filesize_t *expanded_len,
                                    svn_fs_t *fs,
                                    svn_fs_x__revision_file_t *rev_file,
                                    svn_fs_x__p2l_entry_t* entry,
                                    apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_cache_key_t key = { 0 };
  rep_state_t rs = { 0 };
  svn_fs_x__rep_header_t *rep_header;

  /* this function does not apply to representation containers */
  FUNC1(entry->type >= SVN_FS_X__ITEM_TYPE_FILE_REP
                 && entry->type <= SVN_FS_X__ITEM_TYPE_DIR_PROPS);
  FUNC1(entry->item_count == 1);

  /* get / read the representation header */
  key.revision = FUNC5(entry->items[0].change_set);
  key.is_packed = FUNC6(fs, key.revision);
  key.item_index = entry->items[0].number;
  FUNC0(FUNC4(&rep_header, fs, rev_file, &key, scratch_pool));

  /* prepare representation reader state (rs) structure */
  FUNC0(FUNC3(&rs, rep_header, fs, rev_file, entry,
                         scratch_pool));

  /* RS->SFILE may be shared between RS instances -> make sure we point
   * to the right data. */
  *packed_len = rs.size;
  FUNC0(FUNC2(expanded_len, fs, &rs, -1, scratch_pool));

  return SVN_NO_ERROR;
}