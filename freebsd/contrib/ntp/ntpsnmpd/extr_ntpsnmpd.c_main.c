
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AGENTXSOCKET ;
 int HAVE_OPT (int ) ;
 int LOG_INFO ;
 int NETSNMP_DS_AGENT_ROLE ;
 int NETSNMP_DS_AGENT_X_SOCKET ;
 int NETSNMP_DS_APPLICATION_ID ;
 int NOFORK ;
 int OPT_ARG (int ) ;
 int SIGINT ;
 int SIGTERM ;
 int SOCK_CLEANUP ;
 int SOCK_STARTUP ;
 int SYSLOG ;
 int agent_check_and_process (int) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int init_agent (char*) ;
 int init_ntpSnmpSubagentObject () ;
 int init_snmp (char*) ;
 int keep_running ;
 scalar_t__ netsnmp_daemonize (int,int) ;
 int netsnmp_ds_set_boolean (int ,int ,int) ;
 int netsnmp_ds_set_string (int ,int ,int ) ;
 int ntpq_closehost () ;
 scalar_t__ ntpq_openhost (char*,int ) ;
 int ntpsnmpdOptions ;
 int optionProcess (int *,int,char**) ;
 int signal (int ,int ) ;
 int snmp_enable_calllog () ;
 int snmp_enable_stderrlog () ;
 int snmp_log (int ,char*) ;
 int snmp_shutdown (char*) ;
 int stderr ;
 int stop_server ;

int
main (int argc, char **argv) {
  int background = 0;
  int use_syslog = 1;

 {
  int optct = optionProcess(&ntpsnmpdOptions, argc, argv);
  argc -= optct;
  argv += optct;
 }

 if (!HAVE_OPT(NOFORK))
  background = 1;

 if (!HAVE_OPT(SYSLOG))
  use_syslog = 0;


  if (use_syslog)
    snmp_enable_calllog();
  else
    snmp_enable_stderrlog();


    netsnmp_ds_set_boolean(NETSNMP_DS_APPLICATION_ID, NETSNMP_DS_AGENT_ROLE, 1);


  if (background && netsnmp_daemonize(1, !use_syslog))
      exit(1);




  SOCK_STARTUP;


  netsnmp_ds_set_string(NETSNMP_DS_APPLICATION_ID,
                            NETSNMP_DS_AGENT_X_SOCKET, OPT_ARG( AGENTXSOCKET ));

  init_agent("ntpsnmpd");


  if ( ntpq_openhost("localhost", 0) == 0 )
  {
 fprintf(stderr, "Error: Could not connect to ntpd. Aborting.\n");
 exit(1);
  }



  init_ntpSnmpSubagentObject();
  init_snmp("ntpsnmpd");


  keep_running = 1;
  signal(SIGTERM, stop_server);
  signal(SIGINT, stop_server);

  snmp_log(LOG_INFO,"ntpsnmpd started.\n");


  while(keep_running) {
 agent_check_and_process(1);
  }


  ntpq_closehost();
  snmp_shutdown("ntpsnmpd");
  SOCK_CLEANUP;

  return 0;
}
