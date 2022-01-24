#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct traversal_info_update_baton {TYPE_1__* traversal; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  depths; int /*<<< orphan*/  externals_new; int /*<<< orphan*/  externals_old; int /*<<< orphan*/ * pool; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC6(void *baton,
                      const char *local_abspath,
                      const svn_string_t *old_val,
                      const svn_string_t *new_val,
                      svn_depth_t depth,
                      apr_pool_t *scratch_pool)
{
  const char *dup_path;
  svn_wc_adm_access_t *adm_access;
  struct traversal_info_update_baton *ub = baton;
  apr_pool_t *dup_pool = ub->traversal->pool;
  const char *dup_val = NULL;

  /* We make the abspath relative by retrieving the access baton
     for the specific directory */
  adm_access = FUNC4(ub->db, local_abspath,
                                              scratch_pool);

  if (adm_access)
    dup_path = FUNC0(dup_pool, FUNC5(adm_access));
  else
    dup_path = FUNC0(dup_pool, local_abspath);

  if (old_val)
    {
      dup_val = FUNC1(dup_pool, old_val->data, old_val->len);

      FUNC3(ub->traversal->externals_old, dup_path, dup_val);
    }

  if (new_val)
    {
      /* In most cases the value is identical */
      if (old_val != new_val)
        dup_val = FUNC1(dup_pool, new_val->data, new_val->len);

      FUNC3(ub->traversal->externals_new, dup_path, dup_val);
    }

  FUNC3(ub->traversal->depths, dup_path, FUNC2(depth));

  return SVN_NO_ERROR;
}