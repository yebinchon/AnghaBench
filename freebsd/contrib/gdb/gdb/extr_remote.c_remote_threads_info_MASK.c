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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct remote_state* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ remote_desc ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char*,char**,int) ; 
 scalar_t__ use_threadinfo_query ; 

__attribute__((used)) static void
FUNC10 (void)
{
  struct remote_state *rs = FUNC3 ();
  char *buf = FUNC1 (rs->remote_packet_size);
  char *bufp;
  int tid;

  if (remote_desc == 0)		/* paranoia */
    FUNC2 ("Command can only be used when connected to the remote target.");

  if (use_threadinfo_query)
    {
      FUNC7 ("qfThreadInfo");
      bufp = buf;
      FUNC4 (bufp, (rs->remote_packet_size), 0);
      if (bufp[0] != '\0')		/* q packet recognized */
	{
	  while (*bufp++ == 'm')	/* reply contains one or more TID */
	    {
	      do
		{
		  tid = FUNC9 (bufp, &bufp, 16);
		  if (tid != 0 && !FUNC5 (FUNC6 (tid)))
		    FUNC0 (FUNC6 (tid));
		}
	      while (*bufp++ == ',');	/* comma-separated list */
	      FUNC7 ("qsThreadInfo");
	      bufp = buf;
	      FUNC4 (bufp, (rs->remote_packet_size), 0);
	    }
	  return;	/* done */
	}
    }

  /* Else fall back to old method based on jmetzler protocol. */
  use_threadinfo_query = 0;
  FUNC8 ();
  return;
}