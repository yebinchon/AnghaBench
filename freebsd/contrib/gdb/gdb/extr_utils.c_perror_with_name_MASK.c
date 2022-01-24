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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  bfd_error_no_error ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

void
FUNC7 (const char *string)
{
  char *err;
  char *combined;

  err = FUNC3 (errno);
  combined = (char *) FUNC0 (FUNC6 (err) + FUNC6 (string) + 3);
  FUNC5 (combined, string);
  FUNC4 (combined, ": ");
  FUNC4 (combined, err);

  /* I understand setting these is a matter of taste.  Still, some people
     may clear errno but not know about bfd_error.  Doing this here is not
     unreasonable. */
  FUNC1 (bfd_error_no_error);
  errno = 0;

  FUNC2 ("%s.", combined);
}