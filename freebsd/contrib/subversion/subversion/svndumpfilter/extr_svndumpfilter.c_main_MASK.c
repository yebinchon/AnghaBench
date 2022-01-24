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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC1 (int*,int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(int argc, const char *argv[])
{
  apr_pool_t *pool;
  int exit_code = EXIT_SUCCESS;
  svn_error_t *err;

  /* Initialize the app. */
  if (FUNC4("svndumpfilter", stderr) != EXIT_SUCCESS)
    return EXIT_FAILURE;

  /* Create our top-level pool.  Use a separate mutexless allocator,
   * given this application is single threaded.
   */
  pool = FUNC0(FUNC6(FALSE));

  err = FUNC1(&exit_code, argc, argv, pool);

  /* Flush stdout and report if it fails. It would be flushed on exit anyway
     but this makes sure that output is not silently lost if it fails. */
  err = FUNC5(err, FUNC2(stdout));

  if (err)
    {
      exit_code = EXIT_FAILURE;
      FUNC3(err, NULL, "svndumpfilter: ");
    }

  FUNC7(pool);
  return exit_code;
}