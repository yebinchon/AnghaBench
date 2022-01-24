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
struct TYPE_2__ {int /*<<< orphan*/  (* to_create_inferior ) (char*,char*,char**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ uw_thread_active ; 

__attribute__((used)) static void
FUNC4 (char *exec_file, char *allargs, char **env)
{
  if (uw_thread_active)
    FUNC0 ();

  procfs_ops.to_create_inferior (exec_file, allargs, env);
  if (uw_thread_active)
    {
      FUNC1 ();
      FUNC3 (NULL);
    }
}