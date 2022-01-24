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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char **old_name, char *physname)
{
  char *method_name;

  method_name = FUNC1 (physname);

  if (method_name == NULL)
    {
      FUNC0 (&symfile_complaints,
		 "Method has bad physname %s\n", physname);
      return;
    }

  if (FUNC2 (*old_name, method_name) != 0)
    {
      FUNC3 (*old_name);
      *old_name = method_name;
    }
  else
    FUNC3 (method_name);
}