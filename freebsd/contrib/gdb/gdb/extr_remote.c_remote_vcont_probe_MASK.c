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
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  remote_protocol_vcont ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC6 (struct remote_state *rs, char *buf)
{
  FUNC4 (buf, "vCont?");
  FUNC2 (buf);
  FUNC0 (buf, rs->remote_packet_size, 0);

  /* Make sure that the features we assume are supported.  */
  if (FUNC5 (buf, "vCont", 5) == 0)
    {
      char *p = &buf[5];
      int support_s, support_S, support_c, support_C;

      support_s = 0;
      support_S = 0;
      support_c = 0;
      support_C = 0;
      while (p && *p == ';')
	{
	  p++;
	  if (*p == 's' && (*(p + 1) == ';' || *(p + 1) == 0))
	    support_s = 1;
	  else if (*p == 'S' && (*(p + 1) == ';' || *(p + 1) == 0))
	    support_S = 1;
	  else if (*p == 'c' && (*(p + 1) == ';' || *(p + 1) == 0))
	    support_c = 1;
	  else if (*p == 'C' && (*(p + 1) == ';' || *(p + 1) == 0))
	    support_C = 1;

	  p = FUNC3 (p, ';');
	}

      /* If s, S, c, and C are not all supported, we can't use vCont.  Clearing
         BUF will make packet_ok disable the packet.  */
      if (!support_s || !support_S || !support_c || !support_C)
	buf[0] = 0;
    }

  FUNC1 (buf, &remote_protocol_vcont);
}