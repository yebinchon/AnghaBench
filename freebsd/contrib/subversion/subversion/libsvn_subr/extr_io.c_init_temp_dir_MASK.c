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
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temp_dir ; 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton, apr_pool_t *scratch_pool)
{
  /* Global pool for the temp path */
  apr_pool_t *global_pool = FUNC7(NULL);
  const char *dir;

  apr_status_t apr_err = FUNC2(&dir, scratch_pool);

  if (apr_err)
    return FUNC6(apr_err, FUNC1("Can't find a temporary directory"));

  FUNC0(FUNC3(&dir, dir, scratch_pool));

  dir = FUNC5(dir, scratch_pool);

  FUNC0(FUNC4(&temp_dir, dir, global_pool));

  return SVN_NO_ERROR;
}