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
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC5(apr_hash_t *externals,
              const char *path,
              const svn_string_t *externals_prop_val)
{
  apr_pool_t *pool = FUNC1(externals);
  const char *local_abspath;

  if (! externals_prop_val)
    return SVN_NO_ERROR;

  FUNC0(FUNC3(&local_abspath, path, pool));

  FUNC4(externals, local_abspath,
                FUNC2(pool, externals_prop_val->data,
                               externals_prop_val->len));

  return SVN_NO_ERROR;
}