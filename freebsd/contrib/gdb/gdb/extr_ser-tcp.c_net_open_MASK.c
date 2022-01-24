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
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct serial {scalar_t__ fd; } ;
struct in_addr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
typedef  int /*<<< orphan*/  sockaddr ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINTR ; 
 int ENOENT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  PF_INET ; 
 int POLL_INTERVAL ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int TIMEOUT ; 
 int FUNC2 (char*) ; 
 int FUNC3 (scalar_t__,struct sockaddr*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 struct hostent* FUNC6 (char*) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct serial*) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC17 (char const*,char) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 scalar_t__ FUNC19 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22 (struct serial *scb, const char *name)
{
  char *port_str, hostname[100];
  int n, port, tmp;
  int use_udp;
  struct hostent *hostent;
  struct sockaddr_in sockaddr;

  use_udp = 0;
  if (FUNC19 (name, "udp:", 4) == 0)
    {
      use_udp = 1;
      name = name + 4;
    }
  else if (FUNC19 (name, "tcp:", 4) == 0)
    name = name + 4;

  port_str = FUNC17 (name, ':');

  if (!port_str)
    FUNC4 ("net_open: No colon in host name!");	   /* Shouldn't ever happen */

  tmp = FUNC11 (port_str - name, (int) sizeof hostname - 1);
  FUNC20 (hostname, name, tmp);	/* Don't want colon */
  hostname[tmp] = '\000';	/* Tie off host name */
  port = FUNC2 (port_str + 1);

  /* default hostname is localhost */
  if (!hostname[0])
    FUNC18 (hostname, "localhost");

  hostent = FUNC6 (hostname);
  if (!hostent)
    {
      FUNC5 (gdb_stderr, "%s: unknown host\n", hostname);
      errno = ENOENT;
      return -1;
    }

  if (use_udp)
    scb->fd = FUNC16 (PF_INET, SOCK_DGRAM, 0);
  else
    scb->fd = FUNC16 (PF_INET, SOCK_STREAM, 0);

  if (scb->fd < 0)
    return -1;
  
  sockaddr.sin_family = PF_INET;
  sockaddr.sin_port = FUNC8 (port);
  FUNC10 (&sockaddr.sin_addr.s_addr, hostent->h_addr,
	  sizeof (struct in_addr));

  /* set socket nonblocking */
  tmp = 1;
  FUNC9 (scb->fd, FIONBIO, &tmp);

  /* Use Non-blocking connect.  connect() will return 0 if connected already. */
  n = FUNC3 (scb->fd, (struct sockaddr *) &sockaddr, sizeof (sockaddr));

  if (n < 0 && errno != EINPROGRESS)
    {
      FUNC12 (scb);
      return -1;
    }

  if (n)
    {
      /* looks like we need to wait for the connect */
      struct timeval t;
      fd_set rset, wset;
      int polls = 0;
      FUNC1 (&rset);

      do 
	{
	  /* While we wait for the connect to complete 
	     poll the UI so it can update or the user can 
	     interrupt. */
	  if (&ui_loop_hook)
	    {
	      if (FUNC21 (0))
		{
		  errno = EINTR;
		  FUNC12 (scb);
		  return -1;
		}
	    }
	  
	  FUNC0 (scb->fd, &rset);
	  wset = rset;
	  t.tv_sec = 0;
	  t.tv_usec = 1000000 / POLL_INTERVAL;
	  
	  n = FUNC13 (scb->fd + 1, &rset, &wset, NULL, &t);
	  polls++;
	} 
      while (n == 0 && polls <= TIMEOUT * POLL_INTERVAL);
      if (n < 0 || polls > TIMEOUT * POLL_INTERVAL)
	{
	  if (polls > TIMEOUT * POLL_INTERVAL)
	    errno = ETIMEDOUT;
	  FUNC12 (scb);
	  return -1;
	}
    }

  /* Got something.  Is it an error? */
  {
    int res, err, len;
    len = sizeof(err);
    res = FUNC7 (scb->fd, SOL_SOCKET, SO_ERROR, &err, &len);
    if (res < 0 || err)
      {
	if (err)
	  errno = err;
	FUNC12 (scb);
	return -1;
      }
  } 

  /* turn off nonblocking */
  tmp = 0;
  FUNC9 (scb->fd, FIONBIO, &tmp);

  if (use_udp == 0)
    {
      /* Disable Nagle algorithm. Needed in some cases. */
      tmp = 1;
      FUNC14 (scb->fd, IPPROTO_TCP, TCP_NODELAY,
		  (char *)&tmp, sizeof (tmp));
    }

  /* If we don't do this, then GDB simply exits
     when the remote side dies.  */
  FUNC15 (SIGPIPE, SIG_IGN);

  return 0;
}