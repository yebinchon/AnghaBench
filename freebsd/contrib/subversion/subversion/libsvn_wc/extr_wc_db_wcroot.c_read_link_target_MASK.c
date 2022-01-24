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
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_NOT_SYMLINK ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC11(const char **link_target_abspath,
                 const char *local_abspath,
                 apr_pool_t *pool)
{
  svn_string_t *link_target;
  const char *canon_link_target;

  FUNC0(FUNC9(&link_target, local_abspath, pool));
  if (link_target->len == 0)
    return FUNC8(SVN_ERR_WC_NOT_SYMLINK, NULL,
                             FUNC1("The symlink at '%s' points nowhere"),
                             FUNC7(local_abspath, pool));

  canon_link_target = FUNC2(link_target->data, pool);

  /* Treat relative symlinks as relative to LOCAL_ABSPATH's parent. */
  if (!FUNC5(canon_link_target))
    canon_link_target = FUNC6(FUNC3(local_abspath,
                                                           pool),
                                        canon_link_target, pool);

  /* Collapse any .. in the symlink part of the path. */
  if (FUNC10(canon_link_target))
    FUNC0(FUNC4(link_target_abspath, canon_link_target,
                                    pool));
  else
    *link_target_abspath = canon_link_target;

  return SVN_NO_ERROR;
}