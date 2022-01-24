#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_fs_fsx_info_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void *
FUNC1(const void *fsx_info_void,
           apr_pool_t *result_pool)
{
  /* All fields are either ints or static strings. */
  const svn_fs_fsx_info_t *fsx_info = fsx_info_void;
  return FUNC0(result_pool, fsx_info, sizeof(*fsx_info));
}