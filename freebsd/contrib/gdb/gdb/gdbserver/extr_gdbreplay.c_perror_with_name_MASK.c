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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* FUNC6 (int) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static void
FUNC8 (char *string)
{
#ifndef STDC_HEADERS
  extern int errno;
#endif
  const char *err;
  char *combined;

  err = FUNC6 (errno);
  if (err == NULL)
    err = "unknown error";

  combined = (char *) FUNC0 (FUNC7 (err) + FUNC7 (string) + 3);
  FUNC5 (combined, string);
  FUNC4 (combined, ": ");
  FUNC4 (combined, err);
  FUNC3 (stderr, "\n%s.\n", combined);
  FUNC2 (stderr);
  FUNC1 (1);
}