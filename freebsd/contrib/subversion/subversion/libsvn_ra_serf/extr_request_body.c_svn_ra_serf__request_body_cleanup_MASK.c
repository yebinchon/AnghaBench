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
struct TYPE_3__ {scalar_t__ file; } ;
typedef  TYPE_1__ svn_ra_serf__request_body_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC2(svn_ra_serf__request_body_t *body,
                                  apr_pool_t *scratch_pool)
{
  if (body->file)
    FUNC0(FUNC1(body->file, scratch_pool));

  return SVN_NO_ERROR;
}