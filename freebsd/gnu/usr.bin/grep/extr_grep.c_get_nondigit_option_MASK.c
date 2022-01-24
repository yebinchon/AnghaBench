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
typedef  int /*<<< orphan*/  uintmax_t ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int FUNC1 (int,char* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  long_options ; 
 int /*<<< orphan*/  short_options ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3 (int argc, char *const *argv, int *default_context)
{
  int opt;
  char buf[sizeof (uintmax_t) * CHAR_BIT + 4];
  char *p = buf;

  /* Set buf[0] to anything but '0', for the leading-zero test below.  */
  buf[0] = '\0';

  while (opt = FUNC1 (argc, argv, short_options, long_options, NULL),
	 '0' <= opt && opt <= '9')
    {
      /* Suppress trivial leading zeros, to avoid incorrect
	 diagnostic on strings like 00000000000.  */
      p -= buf[0] == '0';

      *p++ = opt;
      if (p == buf + sizeof buf - 4)
	{
	  /* Too many digits.  Append "..." to make context_length_arg
	     complain about "X...", where X contains the digits seen
	     so far.  */
	  FUNC2 (p, "...");
	  p += 3;
	  break;
	}
    }
  if (p != buf)
    {
      *p = '\0';
      FUNC0 (buf, default_context);
    }

  return opt;
}