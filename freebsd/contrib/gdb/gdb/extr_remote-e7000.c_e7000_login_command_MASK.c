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
 void* dir ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* machine ; 
 void* FUNC1 (char**) ; 
 void* passwd ; 
 int /*<<< orphan*/  FUNC2 (char*,void*,void*,void*,void*) ; 
 void* user ; 

__attribute__((used)) static void
FUNC3 (char *args, int from_tty)
{
  if (args)
    {
      machine = FUNC1 (&args);
      user = FUNC1 (&args);
      passwd = FUNC1 (&args);
      dir = FUNC1 (&args);
      if (from_tty)
	{
	  FUNC2 ("Set info to %s %s %s %s\n", machine, user, passwd, dir);
	}
    }
  else
    {
      FUNC0 ("Syntax is ftplogin <machine> <user> <passwd> <directory>");
    }
}