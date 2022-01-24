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
struct termios {int c_cflag; int* c_cc; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct termio {int c_cflag; int* c_cc; int /*<<< orphan*/  sg_flags; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct sgttyb {int c_cflag; int* c_cc; int /*<<< orphan*/  sg_flags; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
typedef  int /*<<< orphan*/  sockaddr ;

/* Variables and functions */
 int CLOCAL ; 
 int CS8 ; 
 int CSIZE ; 
 int FASYNC ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  F_SETOWN ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PARENB ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  RAW ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_KEEPALIVE ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  TCGETA ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  TCSETA ; 
 int /*<<< orphan*/  TIOCGETP ; 
 int /*<<< orphan*/  TIOCSETP ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int FUNC0 (int,struct sockaddr*,int*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* FUNC9 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,struct termio*) ; 
 scalar_t__ FUNC11 (int,int) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int remote_desc ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC17 (char*,char) ; 
 int /*<<< orphan*/  FUNC18 (int,struct termios*) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ,struct termios*) ; 

void
FUNC20 (char *name)
{
  int save_fcntl_flags;
  
  if (!FUNC17 (name, ':'))
    {
      remote_desc = FUNC12 (name, O_RDWR);
      if (remote_desc < 0)
	FUNC13 ("Could not open remote device");

#ifdef HAVE_TERMIOS
      {
	struct termios termios;
	tcgetattr (remote_desc, &termios);

	termios.c_iflag = 0;
	termios.c_oflag = 0;
	termios.c_lflag = 0;
	termios.c_cflag &= ~(CSIZE | PARENB);
	termios.c_cflag |= CLOCAL | CS8;
	termios.c_cc[VMIN] = 1;
	termios.c_cc[VTIME] = 0;

	tcsetattr (remote_desc, TCSANOW, &termios);
      }
#endif

#ifdef HAVE_TERMIO
      {
	struct termio termio;
	ioctl (remote_desc, TCGETA, &termio);

	termio.c_iflag = 0;
	termio.c_oflag = 0;
	termio.c_lflag = 0;
	termio.c_cflag &= ~(CSIZE | PARENB);
	termio.c_cflag |= CLOCAL | CS8;
	termio.c_cc[VMIN] = 1;
	termio.c_cc[VTIME] = 0;

	ioctl (remote_desc, TCSETA, &termio);
      }
#endif

#ifdef HAVE_SGTTY
      {
	struct sgttyb sg;

	ioctl (remote_desc, TIOCGETP, &sg);
	sg.sg_flags = RAW;
	ioctl (remote_desc, TIOCSETP, &sg);
      }
#endif

      FUNC6 (stderr, "Remote debugging using %s\n", name);
    }
  else
    {
      char *port_str;
      int port;
      struct sockaddr_in sockaddr;
      int tmp;
      int tmp_desc;

      port_str = FUNC17 (name, ':');

      port = FUNC1 (port_str + 1);

      tmp_desc = FUNC16 (PF_INET, SOCK_STREAM, 0);
      if (tmp_desc < 0)
	FUNC13 ("Can't open socket");

      /* Allow rapid reuse of this port. */
      tmp = 1;
      FUNC14 (tmp_desc, SOL_SOCKET, SO_REUSEADDR, (char *) &tmp,
		  sizeof (tmp));

      sockaddr.sin_family = PF_INET;
      sockaddr.sin_port = FUNC8 (port);
      sockaddr.sin_addr.s_addr = INADDR_ANY;

      if (FUNC2 (tmp_desc, (struct sockaddr *) &sockaddr, sizeof (sockaddr))
	  || FUNC11 (tmp_desc, 1))
	FUNC13 ("Can't bind address");

      FUNC6 (stderr, "Listening on port %d\n", port);

      tmp = sizeof (sockaddr);
      remote_desc = FUNC0 (tmp_desc, (struct sockaddr *) &sockaddr, &tmp);
      if (remote_desc == -1)
	FUNC13 ("Accept failed");

      /* Enable TCP keep alive process. */
      tmp = 1;
      FUNC14 (tmp_desc, SOL_SOCKET, SO_KEEPALIVE, (char *) &tmp, sizeof (tmp));

      /* Tell TCP not to delay small packets.  This greatly speeds up
         interactive response. */
      tmp = 1;
      FUNC14 (remote_desc, IPPROTO_TCP, TCP_NODELAY,
		  (char *) &tmp, sizeof (tmp));

      FUNC3 (tmp_desc);		/* No longer need this */

      FUNC15 (SIGPIPE, SIG_IGN);	/* If we don't do this, then gdbserver simply
					   exits when the remote side dies.  */

      /* Convert IP address to string.  */
      FUNC6 (stderr, "Remote debugging from host %s\n", 
         FUNC9 (sockaddr.sin_addr));
    }

#if defined(F_SETFL) && defined (FASYNC)
  save_fcntl_flags = fcntl (remote_desc, F_GETFL, 0);
  fcntl (remote_desc, F_SETFL, save_fcntl_flags | FASYNC);
#if defined (F_SETOWN)
  fcntl (remote_desc, F_SETOWN, getpid ());
#endif
#endif
  FUNC4 ();
}