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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/ * FUNC2 (int*,int,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ threads ; 

int
FUNC9(int argc, const char *argv[])
{
  apr_pool_t *pool;
  int exit_code = EXIT_SUCCESS;
  svn_error_t *err;

  /* Initialize the app. */
  if (FUNC5("svnserve", stderr) != EXIT_SUCCESS)
    return EXIT_FAILURE;

  /* Create our top-level pool. */
  pool = FUNC0(FUNC7(TRUE));

  err = FUNC2(&exit_code, argc, argv, pool);

  /* Flush stdout and report if it fails. It would be flushed on exit anyway
     but this makes sure that output is not silently lost if it fails. */
  err = FUNC6(err, FUNC3(stdout));

  if (err)
    {
      exit_code = EXIT_FAILURE;
      FUNC4(err, NULL, "svnserve: ");
    }

#if APR_HAS_THREADS
  /* Explicitly wait for all threads to exit.  As we found out with similar
     code in our C test framework, the memory pool cleanup below cannot be
     trusted to do the right thing. */
  if (threads)
    apr_thread_pool_destroy(threads);
#endif

  /* this will also close the server's socket */
  FUNC8(pool);
  return exit_code;
}