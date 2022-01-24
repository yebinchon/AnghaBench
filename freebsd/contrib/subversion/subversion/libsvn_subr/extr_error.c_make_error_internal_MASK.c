#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {long line; void* file; int /*<<< orphan*/ * pool; struct TYPE_6__* child; scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_ENOTIMPL ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  apr_pool_cleanup_null ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void**,scalar_t__) ; 
 int /*<<< orphan*/  err_abort ; 
 void* error_file ; 
 scalar_t__ error_file_key ; 
 long error_line ; 
 scalar_t__ error_line_key ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(apr_status_t apr_err,
                    svn_error_t *child)
{
  apr_pool_t *pool;
  svn_error_t *new_error;
#ifdef SVN_DEBUG
  apr_status_t status = APR_ENOTIMPL;
#endif

  /* Reuse the child's pool, or create our own. */
  if (child)
    pool = child->pool;
  else
    {
      pool = FUNC4(NULL);
      if (!pool)
        FUNC0();
    }

  /* Create the new error structure */
  new_error = FUNC1(pool, sizeof(*new_error));

  /* Fill 'er up. */
  new_error->apr_err = apr_err;
  new_error->child   = child;
  new_error->pool    = pool;

#ifdef SVN_DEBUG
#if APR_HAS_THREADS
  if (error_file_key && error_line_key)
    {
      void *item;
      status = apr_threadkey_private_get(&item, error_file_key);
      if (status == APR_SUCCESS)
        {
          new_error->file = item;
          status = apr_threadkey_private_get(&item, error_line_key);
          if (status == APR_SUCCESS)
            new_error->line = (long)item;
        }
    }
#  endif  /* APR_HAS_THREADS */

  if (status != APR_SUCCESS)
    {
      new_error->file = error_file;
      new_error->line = error_line;
    }

  if (! child)
      apr_pool_cleanup_register(pool, new_error,
                                err_abort,
                                apr_pool_cleanup_null);
#endif /* SVN_DEBUG */

  return new_error;
}