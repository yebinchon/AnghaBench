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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char const*) ; 

void
FUNC6 (char *string)
{
#ifndef STDC_HEADERS
  extern int errno;
#endif
  const char *err;
  char *combined;

  err = FUNC4 (errno);
  if (err == NULL)
    err = "unknown error";

  combined = (char *) FUNC0 (FUNC5 (err) + FUNC5 (string) + 3);
  FUNC3 (combined, string);
  FUNC2 (combined, ": ");
  FUNC2 (combined, err);

  FUNC1 ("%s.", combined);
}