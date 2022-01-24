#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  item_count; int /*<<< orphan*/  fnv1_checksum; int /*<<< orphan*/  type; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(apr_file_t *proto_index,
                                svn_fs_x__p2l_entry_t *entry,
                                svn_boolean_t *eof,
                                apr_pool_t *scratch_pool)
{
  FUNC0(FUNC1(proto_index, &entry->offset,
                                      eof, scratch_pool));
  FUNC0(FUNC1(proto_index, &entry->size,
                                      eof, scratch_pool));
  FUNC0(FUNC2(proto_index, &entry->type,
                                       eof, scratch_pool));
  FUNC0(FUNC2(proto_index, &entry->fnv1_checksum,
                                       eof, scratch_pool));
  FUNC0(FUNC2(proto_index, &entry->item_count,
                                       eof, scratch_pool));

  return SVN_NO_ERROR;
}