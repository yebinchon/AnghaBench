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
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const char **lock_root_abspath,
                                       svn_wc_context_t *wc_ctx,
                                       const char *local_abspath,
                                       apr_pool_t *result_pool,
                                       apr_pool_t *scratch_pool)
{
  svn_boolean_t locked = FALSE;
  const char *obtained_abspath;
  const char *requested_abspath = local_abspath;

  while (!locked)
    {
      const char *required_abspath;
      const char *child;

      FUNC0(FUNC5(&obtained_abspath, wc_ctx,
                                         requested_abspath, FALSE,
                                         scratch_pool, scratch_pool));
      locked = TRUE;

      FUNC0(FUNC7(&required_abspath,
                                                wc_ctx->db, local_abspath,
                                                scratch_pool, scratch_pool));

      /* It's possible for the required lock path to be an ancestor
         of, a descendant of, or equal to, the obtained lock path. If
         it's an ancestor we have to try again, otherwise the obtained
         lock will do. */
      child = FUNC4(required_abspath, obtained_abspath);
      if (child && child[0])
        {
          FUNC0(FUNC6(wc_ctx, obtained_abspath,
                                             scratch_pool));
          locked = FALSE;
          requested_abspath = required_abspath;
        }
      else
        {
          /* required should be a descendant of, or equal to, obtained */
          FUNC1(!FUNC3(required_abspath, obtained_abspath)
                         || FUNC4(obtained_abspath,
                                                     required_abspath));
        }
    }

  *lock_root_abspath = FUNC2(result_pool, obtained_abspath);

  return SVN_NO_ERROR;
}