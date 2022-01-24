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
struct ui_file {int dummy; } ;
struct remote_state {int remote_packet_size; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char,struct ui_file*) ; 
 int FUNC4 (char) ; 
 struct remote_state* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char) ; 
 scalar_t__ FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  remote_desc ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14 (char *command,
	     struct ui_file *outbuf)
{
  struct remote_state *rs = FUNC5 ();
  int i;
  char *buf = FUNC0 (rs->remote_packet_size);
  char *p = buf;

  if (!remote_desc)
    FUNC2 ("remote rcmd is only available after target open");

  /* Send a NULL command across as an empty command */
  if (command == NULL)
    command = "";

  /* The query prefix */
  FUNC12 (buf, "qRcmd,");
  p = FUNC10 (buf, '\0');

  if ((FUNC13 (buf) + FUNC13 (command) * 2 + 8/*misc*/) > (rs->remote_packet_size))
    FUNC2 ("\"monitor\" command ``%s'' is too long\n", command);

  /* Encode the actual command */
  FUNC1 (command, p, 0);

  if (FUNC8 (buf) < 0)
    FUNC2 ("Communication problem with target\n");

  /* get/display the response */
  while (1)
    {
      /* XXX - see also tracepoint.c:remote_get_noisy_reply() */
      buf[0] = '\0';
      FUNC6 (buf, (rs->remote_packet_size), 0);
      if (buf[0] == '\0')
	FUNC2 ("Target does not support this command\n");
      if (buf[0] == 'O' && buf[1] != 'K')
	{
	  FUNC9 (buf + 1); /* 'O' message from stub */
	  continue;
	}
      if (FUNC11 (buf, "OK") == 0)
	break;
      if (FUNC13 (buf) == 3 && buf[0] == 'E'
	  && FUNC7 (buf[1]) && FUNC7 (buf[2]))
	{
	  FUNC2 ("Protocol error with Rcmd");
	}
      for (p = buf; p[0] != '\0' && p[1] != '\0'; p += 2)
	{
	  char c = (FUNC4 (p[0]) << 4) + FUNC4 (p[1]);
	  FUNC3 (c, outbuf);
	}
      break;
    }
}