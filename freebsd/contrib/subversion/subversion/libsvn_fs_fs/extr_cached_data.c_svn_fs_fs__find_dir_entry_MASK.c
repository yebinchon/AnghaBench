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
typedef  int /*<<< orphan*/  svn_fs_dirent_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  compare_dirent_name ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ *,char const*,int*,int /*<<< orphan*/ ) ; 

svn_fs_dirent_t *
FUNC1(apr_array_header_t *entries,
                          const char *name,
                          int *hint)
{
  svn_fs_dirent_t **result
    = FUNC0(entries, name, hint, compare_dirent_name);
  return result ? *result : NULL;
}