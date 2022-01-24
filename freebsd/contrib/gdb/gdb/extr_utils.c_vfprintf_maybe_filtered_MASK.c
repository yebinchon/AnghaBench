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
typedef  int /*<<< orphan*/  va_list ;
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*,int) ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xfree ; 
 int /*<<< orphan*/  FUNC3 (char**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct ui_file *stream, const char *format,
			 va_list args, int filter)
{
  char *linebuffer;
  struct cleanup *old_cleanups;

  FUNC3 (&linebuffer, format, args);
  old_cleanups = FUNC2 (xfree, linebuffer);
  FUNC1 (linebuffer, stream, filter);
  FUNC0 (old_cleanups);
}