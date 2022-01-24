#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {scalar_t__ summarize_kind; scalar_t__ prop_changed; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_client_diff_summarize_t ;
struct summarize_baton_t {char* anchor; scalar_t__ ignore_properties; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ svn_client_diff_summarize_kind_normal ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char,char const*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(const svn_client_diff_summarize_t *summary,
                  void *baton,
                  apr_pool_t *pool)
{
  struct summarize_baton_t *b = baton;
  const char *path = b->anchor;
  char prop_change;

  if (b->ignore_properties &&
      summary->summarize_kind == svn_client_diff_summarize_kind_normal)
    return SVN_NO_ERROR;

  /* Tack on the target path, so we can differentiate between different parts
   * of the output when we're given multiple targets. */
  if (FUNC6(path))
    {
      path = FUNC7(path, summary->path, pool);
    }
  else
    {
      path = FUNC4(path, summary->path, pool);

      /* Convert non-urls to local style, so that things like ""
         show up as "." */
      path = FUNC5(path, pool);
    }

  /* Note: This output format tries to look like the output of 'svn status',
   *       thus the blank spaces where information that is not relevant to
   *       a diff summary would go. */

  prop_change = summary->prop_changed ? 'M' : ' ';
  if (b->ignore_properties)
    prop_change = ' ';

  FUNC0(FUNC3(pool, "%c%c      %s\n",
                             FUNC1(summary->summarize_kind),
                             prop_change, path));

  return FUNC2(stdout);
}