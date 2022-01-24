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
typedef  int /*<<< orphan*/  svn_wc_adm_access_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_wc_adm_access_t *
FUNC2(svn_wc__db_t *db,
                               const char *abspath,
                               apr_pool_t *scratch_pool)
{
  svn_wc_adm_access_t *adm_access = FUNC1(abspath, db, scratch_pool);

  /* If the entry is marked as "missing", then return nothing.  */
  if (FUNC0(adm_access))
    adm_access = NULL;

  return adm_access;
}