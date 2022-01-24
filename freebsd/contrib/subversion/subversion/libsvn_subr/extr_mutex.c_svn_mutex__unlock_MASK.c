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
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ svn_mutex__t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC3(svn_mutex__t *mutex,
                  svn_error_t *err)
{
  if (mutex)
    {
#if APR_HAS_THREADS
      apr_status_t status = apr_thread_mutex_unlock(mutex->mutex);
      if (status && !err)
        return svn_error_wrap_apr(status, _("Can't unlock mutex"));
#endif
    }

  return err;
}