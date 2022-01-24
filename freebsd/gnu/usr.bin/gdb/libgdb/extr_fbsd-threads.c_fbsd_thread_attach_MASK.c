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
struct target_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* to_attach ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct target_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  auto_solib_add ; 
 TYPE_1__ child_ops ; 
 int /*<<< orphan*/  fbsd_thread_active ; 
 scalar_t__ fbsd_thread_core ; 
 int /*<<< orphan*/  fbsd_thread_ops ; 
 scalar_t__ fbsd_thread_present ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  fbsd_thread_core = 0;

  child_ops.to_attach (args, from_tty);

  /* Must get symbols from solibs before libthread_db can run! */
  FUNC0 ((char *) 0, from_tty, (struct target_ops *) 0, auto_solib_add);

  if (fbsd_thread_present && !fbsd_thread_active)
    FUNC1(&fbsd_thread_ops);
}