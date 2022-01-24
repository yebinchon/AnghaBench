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
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4 (void *data, const char *command)
{
  char *tmp = FUNC0 (FUNC3 (command) + 1);
  FUNC2 (tmp, command);
  FUNC1 (tmp);
  return 1;
}