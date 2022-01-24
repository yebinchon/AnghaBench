#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* kind; } ;
typedef  TYPE_1__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const**,int /*<<< orphan*/ *) ; 
 void* svn_opt_revision_unspecified ; 

svn_error_t *
FUNC3(const char **path_result,
                                  svn_opt_revision_t *peg_rev_result,
                                  svn_opt_revision_t *rev_result,
                                  const char *str,
                                  apr_pool_t *pool)
{
  if (str)
    {
      svn_opt_revision_t peg_rev;
      svn_opt_revision_t op_rev;
      const char *s = str;

      FUNC0(FUNC2(&peg_rev, &s, pool));
      FUNC0(FUNC2(&op_rev, &s, pool));

      *path_result = FUNC1(pool, s);
      *peg_rev_result = peg_rev;
      *rev_result = op_rev;
    }
  else
    {
      *path_result = NULL;
      peg_rev_result->kind = svn_opt_revision_unspecified;
      rev_result->kind = svn_opt_revision_unspecified;
    }

  return SVN_NO_ERROR;
}