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
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC2 (char const*) ; 

svn_error_t *
FUNC3(const char **true_target,
                                   const char **peg_revision,
                                   const char *utf8_target,
                                   apr_pool_t *pool)
{
  const char *peg_start = NULL; /* pointer to the peg revision, if any */
  const char *ptr;

  for (ptr = (utf8_target + FUNC2(utf8_target) - 1); ptr >= utf8_target;
        --ptr)
    {
      /* If we hit a path separator, stop looking.  This is OK
          only because our revision specifiers can't contain '/'. */
      if (*ptr == '/')
        break;

      if (*ptr == '@')
        {
          peg_start = ptr;
          break;
        }
    }

  if (peg_start)
    {
      *true_target = FUNC1(pool, utf8_target, ptr - utf8_target);
      if (peg_revision)
        *peg_revision = FUNC0(pool, peg_start);
    }
  else
    {
      *true_target = utf8_target;
      if (peg_revision)
        *peg_revision = "";
    }

  return SVN_NO_ERROR;
}