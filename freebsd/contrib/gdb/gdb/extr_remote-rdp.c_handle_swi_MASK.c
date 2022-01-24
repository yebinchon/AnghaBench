#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int n; char* s; } ;
typedef  TYPE_1__ argsin ;

/* Variables and functions */
#define  ABYTE 130 
#define  ASTRING 129 
#define  AWORD 128 
 int /*<<< orphan*/  RDP_OSOpNothing ; 
 int /*<<< orphan*/  RDP_OSOpReply ; 
 int /*<<< orphan*/  RDP_OSOpWord ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,TYPE_1__*) ; 
 void* FUNC3 () ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC7 (void)
{
  argsin args[3];
  char *buf;
  int len;
  int count = 0;

  int swino = FUNC4 ();
  int type = FUNC3 ();
  while (type != 0)
    {
      switch (type & 0x3)
	{
	case ABYTE:
	  args[count].n = FUNC3 ();
	  break;

	case AWORD:
	  args[count].n = FUNC4 ();
	  break;

	case ASTRING:
	  /* If the word is under 32 bytes it will be sent otherwise
	     an address to it is passed. Also: Special case of 255 */

	  len = FUNC3 ();
	  if (len > 32)
	    {
	      if (len == 255)
		{
		  len = FUNC4 ();
		}
	      buf = FUNC0 (len);
	      FUNC5 (FUNC4 (),
					       buf,
					       len,
					       0,
					       0,
					       0);
	    }
	  else
	    {
	      int i;
	      buf = FUNC0 (len + 1);
	      for (i = 0; i < len; i++)
		buf[i] = FUNC3 ();
	      buf[i] = 0;
	    }
	  args[count].n = len;
	  args[count].s = buf;
	  break;

	default:
	  FUNC1 ("Unimplemented SWI argument");
	}

      type = type >> 2;
      count++;
    }

  if (FUNC2 (swino, args))
    {
      /* We have two options here reply with either a byte or a word
         which is stored in args[0].n. There is no harm in replying with
         a word all the time, so thats what I do! */
      FUNC6 ("bbw-", RDP_OSOpReply, RDP_OSOpWord, args[0].n);
    }
  else
    {
      FUNC6 ("bb-", RDP_OSOpReply, RDP_OSOpNothing);
    }
}