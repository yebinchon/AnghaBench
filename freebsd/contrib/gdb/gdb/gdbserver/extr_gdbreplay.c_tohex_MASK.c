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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC3 (int ch)
{
  if (ch >= '0' && ch <= '9')
    {
      return (ch - '0');
    }
  if (ch >= 'A' && ch <= 'F')
    {
      return (ch - 'A' + 10);
    }
  if (ch >= 'a' && ch <= 'f')
    {
      return (ch - 'a' + 10);
    }
  FUNC2 (stderr, "\nInvalid hex digit '%c'\n", ch);
  FUNC1 (stderr);
  FUNC0 (1);
}