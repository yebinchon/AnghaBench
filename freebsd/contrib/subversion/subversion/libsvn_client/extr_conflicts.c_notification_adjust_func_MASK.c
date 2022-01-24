#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ svn_wc_notify_t ;
struct notification_adjust_baton {int /*<<< orphan*/  inner_baton; int /*<<< orphan*/  (* inner_func ) (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  final_abspath; int /*<<< orphan*/  checkout_abspath; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *baton,
                         const svn_wc_notify_t *notify,
                         apr_pool_t *pool)
{
  struct notification_adjust_baton *nb = baton;
  svn_wc_notify_t *inner_notify = FUNC3(notify, pool);
  const char *relpath;

  relpath = FUNC2(nb->checkout_abspath, notify->path);
  inner_notify->path = FUNC1(nb->final_abspath, relpath, pool);

  if (nb->inner_func)
    nb->inner_func(nb->inner_baton, inner_notify, pool);
}