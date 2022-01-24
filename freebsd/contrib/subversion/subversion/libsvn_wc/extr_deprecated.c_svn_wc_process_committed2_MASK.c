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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC1(const char *path,
                          svn_wc_adm_access_t *adm_access,
                          svn_boolean_t recurse,
                          svn_revnum_t new_revnum,
                          const char *rev_date,
                          const char *rev_author,
                          const apr_array_header_t *wcprop_changes,
                          svn_boolean_t remove_lock,
                          apr_pool_t *pool)
{
  return FUNC0(path, adm_access, recurse, new_revnum,
                                   rev_date, rev_author, wcprop_changes,
                                   remove_lock, NULL, pool);
}