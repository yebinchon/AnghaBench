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
 int ctrl_c ; 
 int /*<<< orphan*/  e7000_desc ; 
 scalar_t__ echo ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC6 (char *args, int fromtty)
{
  /* FIXME: arbitrary limit on length of args.  */
  char buf[200];

  echo = 0;

  if (!e7000_desc)
    FUNC0 ("e7000 target not open.");
  if (!args)
    {
      FUNC3 ("\r");
    }
  else
    {
      FUNC5 (buf, "%s\r", args);
      FUNC3 (buf);
    }

  echo++;
  ctrl_c = 2;
  FUNC1 ();
  echo--;
  ctrl_c = 0;
  FUNC2 ("\n");

  /* Who knows what the command did... */
  FUNC4 ();
}