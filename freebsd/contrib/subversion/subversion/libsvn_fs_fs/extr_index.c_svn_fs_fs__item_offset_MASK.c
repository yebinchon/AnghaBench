#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
struct TYPE_4__ {scalar_t__ is_packed; } ;
typedef  TYPE_1__ svn_fs_fs__revision_file_t ;
typedef  int /*<<< orphan*/  svn_fs_fs__id_part_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(apr_off_t *absolute_position,
                       svn_fs_t *fs,
                       svn_fs_fs__revision_file_t *rev_file,
                       svn_revnum_t revision,
                       const svn_fs_fs__id_part_t *txn_id,
                       apr_uint64_t item_index,
                       apr_pool_t *scratch_pool)
{
  svn_error_t *err = SVN_NO_ERROR;
  if (txn_id)
    {
      if (FUNC5(fs))
        {
          /* the txn is going to produce a rev with logical addressing.
             So, we need to get our info from the (proto) index file. */
          FUNC0(FUNC2(absolute_position, fs, txn_id,
                                         item_index, scratch_pool));
        }
      else
        {
          /* for data in txns, item_index *is* the offset */
          *absolute_position = item_index;
        }
    }
  else if (FUNC5(fs))
    {
      /* ordinary index lookup */
      FUNC0(FUNC1(absolute_position, fs, rev_file, revision,
                               item_index, scratch_pool));
    }
  else if (rev_file->is_packed)
    {
      /* pack file with physical addressing */
      apr_off_t rev_offset;
      FUNC0(FUNC4(&rev_offset, fs, revision,
                                           scratch_pool));
      *absolute_position = rev_offset + item_index;
    }
  else
    {
      /* for non-packed revs with physical addressing,
         item_index *is* the offset */
      *absolute_position = item_index;
    }

  return FUNC3(err);
}