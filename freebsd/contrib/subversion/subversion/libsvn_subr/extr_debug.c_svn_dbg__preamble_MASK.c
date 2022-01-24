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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char const* debug_file ; 
 long debug_line ; 
 int /*<<< orphan*/ * debug_output ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char const*,char) ; 

void
FUNC2(const char *file, long line, FILE *output)
{
  debug_output = output;

  if (output != NULL && !FUNC0())
    {
      /* Quick and dirty basename() code.  */
      const char *slash = FUNC1(file, '/');

      if (slash == NULL)
        slash = FUNC1(file, '\\');
      if (slash)
        debug_file = slash + 1;
      else
        debug_file = file;
    }
  debug_line = line;
}