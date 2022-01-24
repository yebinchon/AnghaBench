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
 int BUFMAX ; 
 char FUNC0 () ; 
 unsigned char FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 unsigned char* remcomInBuffer ; 

unsigned char *
FUNC3 (void)
{
  unsigned char *buffer = &remcomInBuffer[0];
  unsigned char checksum;
  unsigned char xmitcsum;
  int count;
  char ch;

  while (1)
    {
      /* wait around for the start character, ignore all other characters */
      while ((ch = FUNC0 ()) != '$')
	;

retry:
      checksum = 0;
      xmitcsum = -1;
      count = 0;

      /* now, read until a # or end of buffer is found */
      while (count < BUFMAX)
	{
	  ch = FUNC0 ();
          if (ch == '$')
            goto retry;
	  if (ch == '#')
	    break;
	  checksum = checksum + ch;
	  buffer[count] = ch;
	  count = count + 1;
	}
      buffer[count] = 0;

      if (ch == '#')
	{
	  ch = FUNC0 ();
	  xmitcsum = FUNC1 (ch) << 4;
	  ch = FUNC0 ();
	  xmitcsum += FUNC1 (ch);

	  if (checksum != xmitcsum)
	    {
	      FUNC2 ('-');	/* failed checksum */
	    }
	  else
	    {
	      FUNC2 ('+');	/* successful transfer */

	      /* if a sequence char is present, reply the sequence ID */
	      if (buffer[2] == ':')
		{
		  FUNC2 (buffer[0]);
		  FUNC2 (buffer[1]);

		  return &buffer[3];
		}

	      return &buffer[0];
	    }
	}
    }
}