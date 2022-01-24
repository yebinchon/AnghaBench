#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_2__ {int /*<<< orphan*/ * (* change_rev_prop ) (void*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 TYPE_1__ VTBL ; 
 int /*<<< orphan*/ * FUNC0 (void*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC1(void *session_baton,
                                           svn_revnum_t rev,
                                           const char *propname,
                                           const svn_string_t *value,
                                           apr_pool_t *pool)
{
  return VTBL.change_rev_prop(session_baton, rev, propname, NULL, value, pool);
}