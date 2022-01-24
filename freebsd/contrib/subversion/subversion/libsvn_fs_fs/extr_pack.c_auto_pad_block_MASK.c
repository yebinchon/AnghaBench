#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  number; int /*<<< orphan*/  revision; } ;
struct TYPE_11__ {scalar_t__ fnv1_checksum; TYPE_2__ item; int /*<<< orphan*/  type; scalar_t__ size; int /*<<< orphan*/  offset; } ;
typedef  TYPE_3__ svn_fs_fs__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_12__ {int /*<<< orphan*/  pack_offset; int /*<<< orphan*/  proto_p2l_index; int /*<<< orphan*/  pack_file; TYPE_1__* fs; } ;
typedef  TYPE_4__ pack_context_t ;
struct TYPE_13__ {int block_size; } ;
typedef  TYPE_5__ fs_fs_data_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;
struct TYPE_9__ {TYPE_5__* fsap_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_FS__ITEM_INDEX_UNUSED ; 
 int /*<<< orphan*/  SVN_FS_FS__ITEM_TYPE_UNUSED ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(pack_context_t *context,
               apr_off_t to_add,
               apr_pool_t *pool)
{
  fs_fs_data_t *ffd = context->fs->fsap_data;

  /* This is the maximum number of bytes "wasted" that way per block.
   * Larger items will cross the block boundaries. */
  const apr_off_t max_padding = FUNC0(ffd->block_size / 50, 512);

  /* Is wasted space small enough to align the current item to the next
   * block? */
  apr_off_t padding = FUNC2(context);

  if (padding < to_add && padding < max_padding)
    {
      /* Yes. To up with NUL bytes and don't forget to create
       * an P2L index entry marking this section as unused. */
      svn_fs_fs__p2l_entry_t null_entry;

      null_entry.offset = context->pack_offset;
      null_entry.size = padding;
      null_entry.type = SVN_FS_FS__ITEM_TYPE_UNUSED;
      null_entry.item.revision = SVN_INVALID_REVNUM;
      null_entry.item.number = SVN_FS_FS__ITEM_INDEX_UNUSED;
      null_entry.fnv1_checksum = 0;

      FUNC1(FUNC4(context->pack_file, padding, pool));
      FUNC1(FUNC3(
                   context->proto_p2l_index, &null_entry, pool));
      context->pack_offset += padding;
    }

  return SVN_NO_ERROR;
}