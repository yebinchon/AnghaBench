#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_8__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ EIO ; 
 scalar_t__ ESTALE ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_stringbuf_t **content,
                                   svn_boolean_t *missing,
                                   const char *path,
                                   svn_boolean_t last_attempt,
                                   apr_pool_t *pool)
{
  svn_error_t *err = FUNC4(content, path, pool);
  if (missing)
    *missing = FALSE;

  if (err)
    {
      *content = NULL;

      if (FUNC0(err->apr_err))
        {
          if (!last_attempt)
            {
              FUNC2(err);
              if (missing)
                *missing = TRUE;
              return SVN_NO_ERROR;
            }
        }
#ifdef ESTALE
      else if (APR_TO_OS_ERROR(err->apr_err) == ESTALE
                || APR_TO_OS_ERROR(err->apr_err) == EIO)
        {
          if (!last_attempt)
            {
              svn_error_clear(err);
              return SVN_NO_ERROR;
            }
        }
#endif
    }

  return FUNC3(err);
}