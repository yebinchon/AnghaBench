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
 scalar_t__ chars_per_line ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* wrap_buffer ; 
 char* wrap_pointer ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (chars_per_line == 0)
    FUNC0 ();

  if (!wrap_buffer)
    {
      wrap_buffer = (char *) FUNC1 (chars_per_line + 2);
      wrap_buffer[0] = '\0';
    }
  else
    wrap_buffer = (char *) FUNC2 (wrap_buffer, chars_per_line + 2);
  wrap_pointer = wrap_buffer;	/* Start it at the beginning.  */
}