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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_stream_t **stream,
                        const char *dir_abspath,
                        const char *fname,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *local_abspath;

  FUNC0(FUNC1(dir_abspath));

  local_abspath = FUNC4(dir_abspath, fname, scratch_pool);
  return FUNC2(FUNC3(stream, local_abspath,
                                                  result_pool, scratch_pool));
}