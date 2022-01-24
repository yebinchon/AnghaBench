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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

__attribute__((used)) static int
FUNC7 (CORE_ADDR memaddr, unsigned char *myaddr, int len)
{
  int count;
  int c;
  int i;
  char buf[200];
  /* Starting address of this pass.  */

/*  printf("READ INF %x %x %d\n", memaddr, myaddr, len); */
  if (((memaddr - 1) + len) < memaddr)
    {
      errno = EIO;
      return 0;
    }

  FUNC6 (buf, "m %s;l\r", FUNC4 (memaddr));
  FUNC5 (buf);

  for (count = 0; count < len; count += 4)
    {
      /* Suck away the address */
      c = FUNC3 ();
      while (c != ' ')
	c = FUNC3 ();
      c = FUNC3 ();
      if (c == '*')
	{			/* Some kind of error */
	  FUNC5 (".\r");	/* Some errors leave us in memory input mode */
	  FUNC0 ();
	  return -1;
	}
      while (c != ' ')
	c = FUNC3 ();

      /* Now read in the data */
      for (i = 0; i < 4; i++)
	{
	  int b = FUNC2 ();
	  if (count + i < len)
	    {
	      myaddr[count + i] = b;
	    }
	}

      /* Skip the trailing ? and send a . to end and a cr for more */
      FUNC3 ();
      FUNC3 ();
      if (count + 4 >= len)
	FUNC5 (".\r");
      else
	FUNC5 ("\r");

    }
  FUNC1 ();
  return len;
}