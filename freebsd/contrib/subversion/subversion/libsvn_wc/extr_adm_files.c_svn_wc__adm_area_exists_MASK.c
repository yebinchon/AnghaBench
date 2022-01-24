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
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_none ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_boolean_t
FUNC3(const char *adm_abspath,
                        apr_pool_t *pool)
{
  const char *path = FUNC2(adm_abspath, NULL, pool);
  svn_node_kind_t kind;
  svn_error_t *err;

  err = FUNC1(path, &kind, pool);
  if (err)
    {
      FUNC0(err);
      /* Return early, since kind is undefined in this case. */
      return FALSE;
    }

  return kind != svn_node_none;
}