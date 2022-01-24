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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 () ; 
 unsigned char FUNC1 (int*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC5 (CORE_ADDR memaddr, unsigned char *myaddr,
				  int len)
{
  int count;
  int c;
  char buf[200];

  /* Starting address of this pass.  */

  if (((memaddr - 1) + len) < memaddr)
    {
      errno = EIO;
      return 0;
    }

  FUNC4 (buf, "d %s %s\r", FUNC2 (memaddr), FUNC2 (memaddr + len - 1));
  FUNC3 (buf);

  count = 0;
  c = FUNC0 ();

  /* skip down to the first ">" */
  while (c != '>')
    c = FUNC0 ();
  /* now skip to the end of that line */
  while (c != '\r')
    c = FUNC0 ();
  c = FUNC0 ();

  while (count < len)
    {
      /* get rid of any white space before the address */
      while (c <= ' ')
	c = FUNC0 ();

      /* Skip the address */
      FUNC1 (&c);

      /* read in the bytes on the line */
      while (c != '"' && count < len)
	{
	  if (c == ' ')
	    c = FUNC0 ();
	  else
	    {
	      myaddr[count++] = FUNC1 (&c);
	    }
	}
      /* throw out the rest of the line */
      while (c != '\r')
	c = FUNC0 ();
    }

  /* wait for the ":" prompt */
  while (c != ':')
    c = FUNC0 ();

  return len;
}