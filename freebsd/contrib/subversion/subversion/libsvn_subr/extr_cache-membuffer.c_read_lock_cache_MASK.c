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
struct TYPE_3__ {scalar_t__ lock; } ;
typedef  TYPE_1__ svn_membuffer_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC4(svn_membuffer_t *cache)
{
#if (APR_HAS_THREADS && USE_SIMPLE_MUTEX)
  return svn_mutex__lock(cache->lock);
#elif (APR_HAS_THREADS && !USE_SIMPLE_MUTEX)
  if (cache->lock)
  {
    apr_status_t status = apr_thread_rwlock_rdlock(cache->lock);
    if (status)
      return svn_error_wrap_apr(status, _("Can't lock cache mutex"));
  }

  return SVN_NO_ERROR;
#else
  return SVN_NO_ERROR;
#endif
}