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
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_3__ {int /*<<< orphan*/  revnum_to_bc; } ;
typedef  TYPE_1__ svn_ra_serf__blncache_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  revnum ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 

svn_error_t *
FUNC2(const char **bc_url_p,
                                 svn_ra_serf__blncache_t *blncache,
                                 svn_revnum_t revnum,
                                 apr_pool_t *result_pool)
{
  const char *value = FUNC0(blncache->revnum_to_bc,
                                   &revnum, sizeof(revnum));
  *bc_url_p = value ? FUNC1(result_pool, value) : NULL;
  return SVN_NO_ERROR;
}