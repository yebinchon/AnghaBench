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
typedef  int /*<<< orphan*/  svn_diff_t ;
typedef  int /*<<< orphan*/  svn_diff_file_options_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
struct rev {int dummy; } ;
struct diff_baton {struct rev* rev; struct blame_chain* chain; } ;
struct blame_chain {int /*<<< orphan*/ * blame; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (struct blame_chain*,struct rev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  output_fns ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct diff_baton*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *last_file,
               const char *cur_file,
               struct blame_chain *chain,
               struct rev *rev,
               const svn_diff_file_options_t *diff_options,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *pool)
{
  if (!last_file)
    {
      FUNC1(chain->blame == NULL);
      chain->blame = FUNC2(chain, rev, 0);
    }
  else
    {
      svn_diff_t *diff;
      struct diff_baton diff_baton;

      diff_baton.chain = chain;
      diff_baton.rev = rev;

      /* We have a previous file.  Get the diff and adjust blame info. */
      FUNC0(FUNC3(&diff, last_file, cur_file,
                                   diff_options, pool));
      FUNC0(FUNC4(diff, &diff_baton, &output_fns,
                               cancel_func, cancel_baton));
    }

  return SVN_NO_ERROR;
}