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
 int EOF ; 
 int EOL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC10 (int argc, char *argv[])
{
  FILE *fp;
  int ch;

  if (argc < 3)
    {
      FUNC4 (stderr, "Usage: gdbreplay <logfile> <host:port>\n");
      FUNC2 (stderr);
      FUNC0 (1);
    }
  fp = FUNC3 (argv[1], "r");
  if (fp == NULL)
    {
      FUNC6 (argv[1]);
    }
  FUNC9 (argv[2]);
  while ((ch = FUNC5 (fp)) != EOF)
    {
      switch (ch)
	{
	case 'w':
	  /* data sent from gdb to gdbreplay, accept and match it */
	  FUNC1 (fp);
	  break;
	case 'r':
	  /* data sent from gdbreplay to gdb, play it */
	  FUNC7 (fp);
	  break;
	case 'c':
	  /* Command executed by gdb */
	  while ((ch = FUNC5 (fp)) != EOL);
	  break;
	}
    }
  FUNC8 ();
  FUNC0 (0);
}