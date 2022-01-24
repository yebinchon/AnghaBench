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
typedef  int /*<<< orphan*/  tmp ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  args ;
typedef  int /*<<< orphan*/  PROCESS_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  WINCE_STUB ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int connection_initialized ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ remote_add_host ; 
 int /*<<< orphan*/  s ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 char* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC20 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21 (void)
{
  int tmp;
  char args[256];
  char *hostname;
  struct sockaddr_in sin;
  char *stub_file_name;
  int s0;
  PROCESS_INFORMATION pi;

  if (!connection_initialized)
    switch (FUNC2 ())
      {
      case 0:
	connection_initialized = 1;
	break;
      default:
	FUNC3 ();
	FUNC7 ("Can't initialize connection to remote device.\n");
	break;
      }

  /* Upload the stub to the handheld device. */
  stub_file_name = FUNC20 ("wince-stub.exe", WINCE_STUB);
  FUNC16 (args, stub_file_name);

  if (remote_add_host)
    {
      FUNC14 (args, " ");
      hostname = FUNC15 (args, '\0');
      if (FUNC8 (hostname, sizeof (args) - FUNC17 (args)))
	FUNC7 ("couldn't get hostname of this system.");
    }

  /* Get a socket. */
  if ((s0 = FUNC13 (AF_INET, SOCK_STREAM, 0)) < 0)
    FUNC18 ("Couldn't connect to host system.");

  /* Allow rapid reuse of the port. */
  tmp = 1;
  (void) FUNC12 (s0, SOL_SOCKET, SO_REUSEADDR, (char *) &tmp, sizeof (tmp));


  /* Set up the information for connecting to the host gdb process. */
  FUNC11 (&sin, 0, sizeof (sin));
  sin.sin_family = AF_INET;
  sin.sin_port = FUNC9 (7000);	/* FIXME: This should be configurable */

  if (FUNC5 (s0, (struct sockaddr *) &sin, sizeof (sin)))
    FUNC7 ("couldn't bind socket");

  if (FUNC10 (s0, 1))
    FUNC7 ("Couldn't open socket for listening.\n");

  /* Start up the stub on the remote device. */
  if (!FUNC0 (FUNC19 (stub_file_name, NULL), FUNC19 (args, NULL),
			NULL, NULL, 0, 0, NULL, NULL, NULL, &pi))
    FUNC7 ("Unable to start remote stub '%s'.  Windows CE error %d.",
	   stub_file_name, FUNC1 ());

  /* Wait for a connection */

  if ((s = FUNC4 (s0, NULL, NULL)) < 0)
    FUNC7 ("couldn't set up server for connection.");

  FUNC6 (s0);
}