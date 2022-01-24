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
struct TYPE_3__ {void* error_baton; int /*<<< orphan*/  error_handler; } ;
typedef  TYPE_1__ svn_cache__t ;
typedef  int /*<<< orphan*/  svn_cache__error_handler_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 

svn_error_t *
FUNC0(svn_cache__t *cache,
                             svn_cache__error_handler_t handler,
                             void *baton,
                             apr_pool_t *scratch_pool)
{
  cache->error_handler = handler;
  cache->error_baton = baton;
  return SVN_NO_ERROR;
}