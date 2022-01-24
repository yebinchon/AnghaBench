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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HDR_LENGTH ; 
 int SERIAL_TIMEOUT ; 
 int SYN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdtarg ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  mips_initializing ; 
 int FUNC7 (int) ; 
 int mips_syn_garbage ; 
 scalar_t__ remote_debug ; 

__attribute__((used)) static int
FUNC8 (unsigned char *hdr, int *pgarbage, int ch, int timeout)
{
  int i;

  while (1)
    {
      /* Wait for a SYN.  mips_syn_garbage is intended to prevent
         sitting here indefinitely if the board sends us one garbage
         character per second.  ch may already have a value from the
         last time through the loop.  */
      while (ch != SYN)
	{
	  ch = FUNC7 (timeout);
	  if (ch == SERIAL_TIMEOUT)
	    return -1;
	  if (ch != SYN)
	    {
	      /* Printing the character here lets the user of gdb see
	         what the program is outputting, if the debugging is
	         being done on the console port.  Don't use _filtered:
	         we can't deal with a QUIT out of target_wait and
	         buffered target output confuses the user. */
 	      if (!mips_initializing || remote_debug > 0)
  		{
		  if (FUNC4 (ch) || FUNC5 (ch))
		    {
		      FUNC2 (ch, gdb_stdtarg);
		    }
		  else
		    {
		      FUNC1 (ch, gdb_stdtarg);
		    }
		  FUNC3 (gdb_stdtarg);
  		}
	      
	      /* Only count unprintable characters. */
	      if (! (FUNC4 (ch) || FUNC5 (ch)))
		(*pgarbage) += 1;

	      if (mips_syn_garbage > 0
		  && *pgarbage > mips_syn_garbage)
		FUNC6 ("Debug protocol failure:  more than %d characters before a sync.",
			    mips_syn_garbage);
	    }
	}

      /* Get the packet header following the SYN.  */
      for (i = 1; i < HDR_LENGTH; i++)
	{
	  ch = FUNC7 (timeout);
	  if (ch == SERIAL_TIMEOUT)
	    return -1;
	  /* Make sure this is a header byte.  */
	  if (ch == SYN || !FUNC0 (ch))
	    break;

	  hdr[i] = ch;
	}

      /* If we got the complete header, we can return.  Otherwise we
         loop around and keep looking for SYN.  */
      if (i >= HDR_LENGTH)
	return 0;
    }
}