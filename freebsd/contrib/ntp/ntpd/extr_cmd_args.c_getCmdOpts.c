
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_long ;


 int AUTHNOREQ ;
 int AUTHREQ ;
 int BCASTSYNC ;
 int CONFIGFILE ;
 int DEF ;
 int DRIFTFILE ;
 int DVAR ;
 int FORCE_STEP_ONCE ;
 scalar_t__ HAVE_OPT (int ) ;
 int IPV4 ;
 int IPV6 ;
 int JAILDIR ;
 int KEYFILE ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int LOOP_MAX ;
 int NTP_MAXKEY ;
 char* OPT_ARG (int ) ;
 long OPT_VALUE_UPDATEINTERVAL ;
 int PANICGATE ;
 int PIDFILE ;
 int PROPAGATIONDELAY ;
 int PROTO_AUTHENTICATE ;
 int PROTO_BROADCLIENT ;
 int PROTO_BROADDELAY ;
 int QUIT ;
 int RW ;
 int SLEW ;
 int STACKCT_OPT (int ) ;
 char** STACKLST_OPT (int ) ;
 int STATSDIR ;
 int STATS_FREQ_FILE ;
 int STATS_PID_FILE ;
 int STATS_STATSDIR ;
 void* TRUE ;
 int TRUSTEDKEY ;
 int UPDATEINTERVAL ;
 int USER ;
 int VAR ;
 void* allow_panic ;
 scalar_t__ atol (char const*) ;
 int authtrust (int,int) ;
 scalar_t__ check_netinfo ;
 char* chrootdir ;
 int cmdline_server_count ;
 char** cmdline_servers ;
 int droproot ;
 char* erealloc (char*,size_t) ;
 char* estrdup (char*) ;
 int exit (int) ;
 void* force_step_once ;
 int fprintf (int ,char*,long) ;
 int getauthkeys (char*) ;
 char* group ;
 long interface_interval ;
 scalar_t__ ipv4_works ;
 scalar_t__ ipv6_works ;
 int loop_config (int ,int) ;
 void* mode_ntpdate ;
 int msyslog (int ,char*,...) ;
 int ntpdOptions ;
 int optionUsage (int *,int) ;
 int proto_config (int ,int,double,int *) ;
 int set_sys_var (char const*,scalar_t__,int) ;
 int sscanf (char const*,char*,double*) ;
 int stats_config (int ,char*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char*,char) ;
 char* user ;

void
getCmdOpts(
 int argc,
 char ** argv
 )
{
 extern const char *config_file;
 int errflg;




 errflg = 0;

 if (ipv4_works && ipv6_works) {
  if (HAVE_OPT( IPV4 ))
   ipv6_works = 0;
  else if (HAVE_OPT( IPV6 ))
   ipv4_works = 0;
 } else if (!ipv4_works && !ipv6_works) {
  msyslog(LOG_ERR, "Neither IPv4 nor IPv6 networking detected, fatal.");
  exit(1);
 } else if (HAVE_OPT( IPV4 ) && !ipv4_works)
  msyslog(LOG_WARNING, "-4/--ipv4 ignored, IPv4 networking not found.");
 else if (HAVE_OPT( IPV6 ) && !ipv6_works)
  msyslog(LOG_WARNING, "-6/--ipv6 ignored, IPv6 networking not found.");

 if (HAVE_OPT( AUTHREQ ))
  proto_config(PROTO_AUTHENTICATE, 1, 0., ((void*)0));
 else if (HAVE_OPT( AUTHNOREQ ))
  proto_config(PROTO_AUTHENTICATE, 0, 0., ((void*)0));

 if (HAVE_OPT( BCASTSYNC ))
  proto_config(PROTO_BROADCLIENT, 1, 0., ((void*)0));

 if (HAVE_OPT( CONFIGFILE )) {
  config_file = OPT_ARG( CONFIGFILE );



 }

 if (HAVE_OPT( DRIFTFILE ))
  stats_config(STATS_FREQ_FILE, OPT_ARG( DRIFTFILE ));

 if (HAVE_OPT( PANICGATE ))
  allow_panic = TRUE;

 if (HAVE_OPT( FORCE_STEP_ONCE ))
  force_step_once = TRUE;
 if (HAVE_OPT( KEYFILE ))
  getauthkeys(OPT_ARG( KEYFILE ));

 if (HAVE_OPT( PIDFILE ))
  stats_config(STATS_PID_FILE, OPT_ARG( PIDFILE ));

 if (HAVE_OPT( QUIT ))
  mode_ntpdate = TRUE;

 if (HAVE_OPT( PROPAGATIONDELAY ))
  do {
   double tmp;
   const char *my_ntp_optarg = OPT_ARG( PROPAGATIONDELAY );

   if (sscanf(my_ntp_optarg, "%lf", &tmp) != 1) {
    msyslog(LOG_ERR,
     "command line broadcast delay value %s undecodable",
     my_ntp_optarg);
   } else {
    proto_config(PROTO_BROADDELAY, 0, tmp, ((void*)0));
   }
  } while (0);

 if (HAVE_OPT( STATSDIR ))
  stats_config(STATS_STATSDIR, OPT_ARG( STATSDIR ));

 if (HAVE_OPT( TRUSTEDKEY )) {
  int ct = STACKCT_OPT( TRUSTEDKEY );
  const char** pp = STACKLST_OPT( TRUSTEDKEY );

  do {
   u_long tkey;
   const char* p = *pp++;

   tkey = (int)atol(p);
   if (tkey == 0 || tkey > NTP_MAXKEY) {
    msyslog(LOG_ERR,
        "command line trusted key %s is invalid",
        p);
   } else {
    authtrust(tkey, 1);
   }
  } while (--ct > 0);
 }
 if (HAVE_OPT( VAR )) {
  int ct;
  const char ** pp;
  const char * v_assign;

  ct = STACKCT_OPT( VAR );
  pp = STACKLST_OPT( VAR );

  do {
   v_assign = *pp++;
   set_sys_var(v_assign, strlen(v_assign) + 1, RW);
  } while (--ct > 0);
 }

 if (HAVE_OPT( DVAR )) {
  int ct = STACKCT_OPT( DVAR );
  const char** pp = STACKLST_OPT( DVAR );

  do {
   const char* my_ntp_optarg = *pp++;

   set_sys_var(my_ntp_optarg, strlen(my_ntp_optarg)+1,
       (u_short) (RW | DEF));
  } while (--ct > 0);
 }

 if (HAVE_OPT( SLEW ))
  loop_config(LOOP_MAX, 600);

 if (HAVE_OPT( UPDATEINTERVAL )) {
  long val = OPT_VALUE_UPDATEINTERVAL;

  if (val >= 0)
   interface_interval = val;
  else {
   fprintf(stderr,
    "command line interface update interval %ld must not be negative\n",
    val);
   msyslog(LOG_ERR,
    "command line interface update interval %ld must not be negative",
    val);
   errflg++;
  }
 }



 if (argc > 0) {
  cmdline_server_count = argc;
  cmdline_servers = argv;
 }


 if (errflg)
  optionUsage(&ntpdOptions, 2);
}
