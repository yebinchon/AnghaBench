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
struct ui_file {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  demangle ; 
 int /*<<< orphan*/  FUNC0 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ui_file*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (struct ui_file*) ; 
 struct ui_file* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_file*) ; 

__attribute__((used)) static char*
FUNC7 (struct frame_info *fi)
{
  static char name[256];
  struct ui_file *stream = FUNC5 (256);
  char *p;

  FUNC1 (FUNC0 (fi), stream, demangle, "");
  p = FUNC4 (stream);

  /* Use simple heuristics to isolate the function name.  The symbol can
     be demangled and we can have function parameters.  Remove them because
     the status line is too short to display them.  */
  if (*p == '<')
    p++;
  FUNC3 (name, p, sizeof (name));
  p = FUNC2 (name, '(');
  if (!p)
    p = FUNC2 (name, '>');
  if (p)
    *p = 0;
  p = FUNC2 (name, '+');
  if (p)
    *p = 0;
  FUNC6 (stream);
  return name;
}