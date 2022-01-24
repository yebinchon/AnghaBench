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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_3__ {scalar_t__ nelts; } ;
typedef  TYPE_1__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC3(svn_client_conflict_t *conflict, apr_pool_t *scratch_pool)
{
  apr_array_header_t *props_conflicted;

  FUNC0(FUNC2(NULL, &props_conflicted, NULL,
                                             conflict, scratch_pool,
                                             scratch_pool));

  /* ### return proper error? */
  FUNC1(props_conflicted && props_conflicted->nelts > 0);

  return SVN_NO_ERROR;
}