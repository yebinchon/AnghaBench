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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  svn_io_file_del_on_close ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const**,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(apr_file_t **file,
                        const char **temp_path,
                        const char *path,
                        const char *suffix,
                        svn_boolean_t delete_on_close,
                        apr_pool_t *pool)
{
  return FUNC0(FUNC1(file, temp_path,
                                                  path, suffix,
                                                  delete_on_close
                                                    ? svn_io_file_del_on_close
                                                    : svn_io_file_del_none,
                                                  pool));
}