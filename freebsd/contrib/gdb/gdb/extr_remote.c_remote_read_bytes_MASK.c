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
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 char* FUNC0 (long) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,long,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

int
FUNC9 (CORE_ADDR memaddr, char *myaddr, int len)
{
  char *buf;
  int max_buf_size;		/* Max size of packet output buffer */
  long sizeof_buf;
  int origlen;

  /* Create a buffer big enough for this packet. */
  max_buf_size = FUNC1 ();
  sizeof_buf = max_buf_size + 1; /* Space for trailing NUL */
  buf = FUNC0 (sizeof_buf);

  origlen = len;
  while (len > 0)
    {
      char *p;
      int todo;
      int i;

      todo = FUNC6 (len, max_buf_size / 2);	/* num bytes that will fit */

      /* construct "m"<memaddr>","<len>" */
      /* sprintf (buf, "m%lx,%x", (unsigned long) memaddr, todo); */
      memaddr = FUNC8 (memaddr);
      p = buf;
      *p++ = 'm';
      p += FUNC4 (p, (ULONGEST) memaddr);
      *p++ = ',';
      p += FUNC4 (p, (ULONGEST) todo);
      *p = '\0';

      FUNC7 (buf);
      FUNC2 (buf, sizeof_buf, 0);

      if (buf[0] == 'E'
	  && FUNC5 (buf[1]) && FUNC5 (buf[2])
	  && buf[3] == '\0')
	{
	  /* There is no correspondance between what the remote protocol uses
	     for errors and errno codes.  We would like a cleaner way of
	     representing errors (big enough to include errno codes, bfd_error
	     codes, and others).  But for now just return EIO.  */
	  errno = EIO;
	  return 0;
	}

      /* Reply describes memory byte by byte,
         each byte encoded as two hex characters.  */

      p = buf;
      if ((i = FUNC3 (p, myaddr, todo)) < todo)
	{
	  /* Reply is short.  This means that we were able to read
	     only part of what we wanted to. */
	  return i + (origlen - len);
	}
      myaddr += todo;
      memaddr += todo;
      len -= todo;
    }
  return origlen;
}