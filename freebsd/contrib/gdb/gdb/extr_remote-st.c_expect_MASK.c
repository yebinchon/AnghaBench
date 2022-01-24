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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  immediate_quit ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static void
FUNC4 (char *string, int discard)
{
  char *p = string;
  int c;

  immediate_quit++;
  while (1)
    {
      c = FUNC3 (timeout);
      if (c == *p++)
	{
	  if (*p == '\0')
	    {
	      immediate_quit--;
	      return;
	    }
	}
      else
	{
	  if (!discard)
	    {
	      FUNC1 (string, 1, (p - 1) - string, stdout);
	      FUNC2 ((char) c);
	      FUNC0 (stdout);
	    }
	  p = string;
	}
    }
}