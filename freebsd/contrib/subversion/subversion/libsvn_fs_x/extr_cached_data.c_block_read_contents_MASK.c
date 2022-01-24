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
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_8__ {int /*<<< orphan*/  item_index; scalar_t__ revision; int /*<<< orphan*/  is_packed; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ svn_fs_x__representation_cache_key_t ;
typedef  int /*<<< orphan*/  svn_fs_x__rep_header_t ;
struct TYPE_9__ {int /*<<< orphan*/  second; scalar_t__ revision; } ;
typedef  TYPE_2__ svn_fs_x__pair_cache_key_t ;
typedef  int /*<<< orphan*/  svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ rep_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
typedef  scalar_t__ apr_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC5(svn_fs_t *fs,
                    svn_fs_x__revision_file_t *rev_file,
                    svn_fs_x__p2l_entry_t* entry,
                    svn_fs_x__pair_cache_key_t *key,
                    apr_off_t max_offset,
                    apr_pool_t *scratch_pool)
{
  svn_fs_x__representation_cache_key_t header_key = { 0 };
  rep_state_t rs = { 0 };
  svn_filesize_t fulltext_len;
  svn_fs_x__rep_header_t *rep_header;

  header_key.revision = (apr_int32_t)key->revision;
  header_key.is_packed = FUNC4(fs, header_key.revision);
  header_key.item_index = key->second;

  FUNC0(FUNC3(&rep_header, fs, rev_file, &header_key,
                          scratch_pool));
  FUNC0(FUNC2(&rs, rep_header, fs, rev_file, entry, scratch_pool));
  FUNC0(FUNC1(&fulltext_len, fs, &rs, max_offset, scratch_pool));

  return SVN_NO_ERROR;
}