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
struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 char* FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ mask_address_p ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (CORE_ADDR memaddr, char *myaddr, int len, int write,
		  struct mem_attrib *attrib, struct target_ops *target)
{
  int i;
  CORE_ADDR addr;
  int count;
  char *buffer;
  int status;

  /* PMON targets do not cope well with 64 bit addresses.  Mask the
     value down to 32 bits. */
  if (mask_address_p)
    memaddr &= (CORE_ADDR) 0xffffffff;

  /* Round starting address down to longword boundary.  */
  addr = memaddr & ~3;
  /* Round ending address up; get number of longwords that makes.  */
  count = (((memaddr + len) - addr) + 3) / 4;
  /* Allocate buffer of that many longwords.  */
  buffer = FUNC0 (count * 4);

  if (write)
    {
      /* Fill start and end extra bytes of buffer with existing data.  */
      if (addr != memaddr || len < 4)
	{
	  /* Need part of initial word -- fetch it.  */
	  FUNC7 (&buffer[0], 4, FUNC4 (addr));
	}

      if (count > 1)
	{
	  /* Need part of last word -- fetch it.  FIXME: we do this even
	     if we don't need it.  */
	  FUNC7 (&buffer[(count - 1) * 4], 4,
				  FUNC4 (addr + (count - 1) * 4));
	}

      /* Copy data to be written over corresponding part of buffer */

      FUNC3 ((char *) buffer + (memaddr & 3), myaddr, len);

      /* Write the entire buffer.  */

      for (i = 0; i < count; i++, addr += 4)
	{
	  status = FUNC5 (addr,
			       FUNC1 (&buffer[i * 4], 4),
				    NULL);
	  /* Report each kilobyte (we download 32-bit words at a time) */
	  if (i % 256 == 255)
	    {
	      FUNC6 ("*");
	      FUNC2 (gdb_stdout);
	    }
	  if (status)
	    {
	      errno = status;
	      return 0;
	    }
	  /* FIXME: Do we want a QUIT here?  */
	}
      if (count >= 256)
	FUNC6 ("\n");
    }
  else
    {
      /* Read all the longwords */
      for (i = 0; i < count; i++, addr += 4)
	{
	  FUNC7 (&buffer[i * 4], 4, FUNC4 (addr));
	  QUIT;
	}

      /* Copy appropriate bytes out of the buffer.  */
      FUNC3 (myaddr, buffer + (memaddr & 3), len);
    }
  return len;
}