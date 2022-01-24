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
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_int64_t ;

/* Variables and functions */
 int GENERATION_READ_RETRY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC12(apr_int64_t *current,
                             svn_fs_t *fs,
                             apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC8(scratch_pool);
  int i;
  svn_error_t *err = SVN_NO_ERROR;
  const char *path = FUNC6(fs, scratch_pool);

  /* Retry in case of incomplete file buffer updates. */
  for (i = 0; i < GENERATION_READ_RETRY_COUNT; ++i)
    {
      svn_stringbuf_t *buf;

      FUNC4(err);
      FUNC7(iterpool);

      /* Read the generation file. */
      err = FUNC10(&buf, path, iterpool);

      /* If we could read the file, it should be complete due to our atomic
       * file replacement scheme. */
      if (!err)
        {
          FUNC11(buf);
          FUNC0(FUNC3(current, buf->data));
          break;
        }

      /* Got unlucky the file was not available.  Retry. */
#if APR_HAS_THREADS
      apr_thread_yield();
#else
      FUNC1(0);
#endif
    }

  FUNC9(iterpool);

  /* If we had to give up, propagate the error. */
  return FUNC5(err);
}