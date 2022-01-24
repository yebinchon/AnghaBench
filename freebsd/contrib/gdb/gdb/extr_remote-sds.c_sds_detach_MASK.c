#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int PBUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5 (char *args, int from_tty)
{
  char buf[PBUFSIZ];

  if (args)
    FUNC0 ("Argument given to \"detach\" when remotely debugging.");

#if 0
  /* Tell the remote target to detach.  */
  strcpy (buf, "D");
  sds_send (buf, 1);
#endif

  FUNC1 ();
  if (from_tty)
    FUNC2 ("Ending remote debugging.\n");
}