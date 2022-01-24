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
struct TYPE_2__ {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ rpcTimeout ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_uinteger ; 
 int /*<<< orphan*/  vx_ops ; 
 int /*<<< orphan*/  vx_run_ops ; 

void
FUNC5 (void)
{
  FUNC3 ();
  FUNC2 (&vx_ops);
  FUNC4 ();
  FUNC2 (&vx_run_ops);

  FUNC1
    (FUNC0 ("vxworks-timeout", class_support, var_uinteger,
		  (char *) &rpcTimeout.tv_sec,
		  "Set seconds to wait for rpc calls to return.\n\
Set the number of seconds to wait for rpc calls to return.", &setlist),
     &showlist);
}