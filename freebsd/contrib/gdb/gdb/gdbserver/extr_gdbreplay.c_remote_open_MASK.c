#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sockaddr ;

/* Variables and functions */
 int /*<<< orphan*/  FASYNC ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int remote_desc ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC14 (char*,char) ; 

__attribute__((used)) static void
FUNC15 (char *name)
{
  if (!FUNC14 (name, ':'))
    {
      FUNC7 (stderr, "%s: Must specify tcp connection as host:addr\n", name);
      FUNC6 (stderr);
      FUNC4 (1);
    }
  else
    {
      char *port_str;
      int port;
      struct sockaddr_in sockaddr;
      int tmp;
      int tmp_desc;

      port_str = FUNC14 (name, ':');

      port = FUNC1 (port_str + 1);

      tmp_desc = FUNC13 (PF_INET, SOCK_STREAM, 0);
      if (tmp_desc < 0)
	FUNC10 ("Can't open socket");

      /* Allow rapid reuse of this port. */
      tmp = 1;
      FUNC11 (tmp_desc, SOL_SOCKET, SO_REUSEADDR, (char *) &tmp,
		  sizeof (tmp));

      sockaddr.sin_family = PF_INET;
      sockaddr.sin_port = FUNC8 (port);
      sockaddr.sin_addr.s_addr = INADDR_ANY;

      if (FUNC2 (tmp_desc, (struct sockaddr *) &sockaddr, sizeof (sockaddr))
	  || FUNC9 (tmp_desc, 1))
	FUNC10 ("Can't bind address");

      tmp = sizeof (sockaddr);
      remote_desc = FUNC0 (tmp_desc, (struct sockaddr *) &sockaddr, &tmp);
      if (remote_desc == -1)
	FUNC10 ("Accept failed");

      /* Enable TCP keep alive process. */
      tmp = 1;
      FUNC11 (tmp_desc, SOL_SOCKET, SO_KEEPALIVE, (char *) &tmp, sizeof (tmp));

      /* Tell TCP not to delay small packets.  This greatly speeds up
         interactive response. */
      tmp = 1;
      FUNC11 (remote_desc, IPPROTO_TCP, TCP_NODELAY,
		  (char *) &tmp, sizeof (tmp));

      FUNC3 (tmp_desc);		/* No longer need this */

      FUNC12 (SIGPIPE, SIG_IGN);	/* If we don't do this, then gdbreplay simply
					   exits when the remote side dies.  */
    }

  FUNC5 (remote_desc, F_SETFL, FASYNC);

  FUNC7 (stderr, "Replay logfile using %s\n", name);
  FUNC6 (stderr);
}