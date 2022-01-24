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
 int /*<<< orphan*/  AGENTXSOCKET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  NETSNMP_DS_AGENT_ROLE ; 
 int /*<<< orphan*/  NETSNMP_DS_AGENT_X_SOCKET ; 
 int /*<<< orphan*/  NETSNMP_DS_APPLICATION_ID ; 
 int /*<<< orphan*/  NOFORK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SOCK_CLEANUP ; 
 int /*<<< orphan*/  SOCK_STARTUP ; 
 int /*<<< orphan*/  SYSLOG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int keep_running ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntpsnmpdOptions ; 
 int FUNC13 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stop_server ; 

int
FUNC19 (int argc, char **argv) {
  int background = 0; /* start as background process */
  int use_syslog = 1; /* use syslog for logging */

	{
		int optct = FUNC13(&ntpsnmpdOptions, argc, argv);
		argc -= optct;
		argv += optct;
	}

	if (!FUNC0(NOFORK))
		background = 1;

	if (!FUNC0(SYSLOG))
		use_syslog = 0;

  /* using the net-snmp syslog facility */
  if (use_syslog)
    FUNC15();
  else
    FUNC16();

  /* Become Subagent */
    FUNC9(NETSNMP_DS_APPLICATION_ID, NETSNMP_DS_AGENT_ROLE, 1);
 
  /* go into background mode, if requested */
  if (background && FUNC8(1, !use_syslog))
      FUNC3(1);

  /* Now register with the master Agent X process */

  /* call Netsnmp socket startup macro, which will initialize the network stuff if required */
  SOCK_STARTUP;

  /* Set AgentX socket interface */
  FUNC10(NETSNMP_DS_APPLICATION_ID,
                            NETSNMP_DS_AGENT_X_SOCKET, FUNC1( AGENTXSOCKET ));

  FUNC5("ntpsnmpd");

  /* Try to connect to ntpd */
  if ( FUNC12("localhost", 0) == 0 )
  {
	FUNC4(stderr, "Error: Could not connect to ntpd. Aborting.\n");
	FUNC3(1);
  }
  

  /* Register callback functions ...  */
  FUNC6();  
  FUNC7("ntpsnmpd");

  /* Signal handler */
  keep_running = 1;
  FUNC14(SIGTERM, stop_server);
  FUNC14(SIGINT, stop_server);

  FUNC17(LOG_INFO,"ntpsnmpd started.\n");
  
  /* main loop here... */
  while(keep_running) {
	FUNC2(1); /* 0 == don't block */
  }

  /* at shutdown time */
  FUNC11();
  FUNC18("ntpsnmpd");
  SOCK_CLEANUP;

  return 0;
}