#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_x__revision_file_t ;
struct TYPE_5__ {int size; scalar_t__ type; int /*<<< orphan*/  fnv1_checksum; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {scalar_t__ digest; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_checksum_ctx_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  apr_uint32_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_FS_X__ITEM_TYPE_UNUSED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_checksum_fnv1a_32x4 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_fs_x__p2l_entry_t *entry,
          svn_fs_x__revision_file_t *rev_file,
          apr_pool_t *scratch_pool)
{
  unsigned char buffer[4096];
  svn_checksum_t *checksum;
  svn_checksum_ctx_t *context
    = FUNC2(svn_checksum_fnv1a_32x4, scratch_pool);
  apr_off_t size = entry->size;

  /* Special rules apply to unused sections / items.  The data must be a
   * sequence of NUL bytes (not checked here) and the checksum is fixed to 0.
   */
  if (entry->type == SVN_FS_X__ITEM_TYPE_UNUSED)
    {
      entry->fnv1_checksum = 0;
      return SVN_NO_ERROR;
    }

  /* Read the block and feed it to the checksum calculator. */
  FUNC0(FUNC6(rev_file, NULL, entry->offset));
  while (size > 0)
    {
      apr_size_t to_read = size > sizeof(buffer)
                         ? sizeof(buffer)
                         : (apr_size_t)size;
      FUNC0(FUNC5(rev_file, buffer, to_read));
      FUNC0(FUNC4(context, buffer, to_read));
      size -= to_read;
    }

  /* Store final checksum in ENTRY. */
  FUNC0(FUNC3(&checksum, context, scratch_pool));
  entry->fnv1_checksum = FUNC1(*(const apr_uint32_t *)checksum->digest);

  return SVN_NO_ERROR;
}