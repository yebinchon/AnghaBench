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
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  dst_filesize; int /*<<< orphan*/  dst_end; int /*<<< orphan*/  dst_start; int /*<<< orphan*/  apr_file; } ;
typedef  TYPE_1__ svn_diff_binary_patch_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_stream_t *
FUNC3(const svn_diff_binary_patch_t *bpatch,
                                       apr_pool_t *result_pool)
{
  svn_stream_t *s = FUNC0(bpatch->apr_file, bpatch->dst_start,
                                           bpatch->dst_end, result_pool);

  s = FUNC2(s, result_pool);

  /* ### If we (ever) want to support the DELTA format, then we should hook the
  undelta handling here */

  return FUNC1(s, bpatch->dst_filesize, result_pool);
}