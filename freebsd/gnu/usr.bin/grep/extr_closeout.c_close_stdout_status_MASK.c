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
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int,int,char*,char const*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ file_name ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC6 (int status)
{
  int e = FUNC4 (stdout) ? 0 : -1;

#if 0
  if (__fpending (stdout) == 0)
    return;
#endif

  if (FUNC3 (stdout) != 0)
    e = errno;

  if (0 < e)
    {
      char const *write_error = FUNC0("write error");
      if (file_name)
	FUNC2 (status, e, "%s: %s", FUNC5 (file_name), write_error);
      else
	FUNC2 (status, e, "%s", write_error);
    }
}