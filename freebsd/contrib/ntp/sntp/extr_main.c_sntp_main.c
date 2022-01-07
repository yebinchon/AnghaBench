
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event_config {int dummy; } ;
struct TYPE_4__ {int tv_usec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; int tv_sec; } ;


 int AF_INET ;
 int AF_INET6 ;
 int BROADCAST ;
 int CONCURRENT ;
 int CTX_BCST ;
 int CTX_CONC ;
 int CTX_UCST ;
 scalar_t__ ENABLED_OPT (int ) ;
 int EV_FEATURE_FDS ;
 int EX_SOFTWARE ;
 int EX_USAGE ;
 int FALSE ;
 scalar_t__ HAVE_OPT (int ) ;
 int IPV4 ;
 int IPV6 ;
 scalar_t__ ISC_R_SUCCESS ;
 int KEYFILE ;
 int KOD ;
 int LOGFILE ;
 int LOG_INFO ;
 int OPT_ARG (int ) ;
 int OPT_VALUE_GAP ;
 int OPT_VALUE_NTPVERSION ;
 scalar_t__ OPT_VALUE_SET_DEBUG_LEVEL ;
 int OPT_VALUE_STEPLIMIT ;
 int OPT_VALUE_TIMEOUT ;
 int SLEW ;
 int STACKCT_OPT (int ) ;
 char** STACKLST_OPT (int ) ;
 int STEP ;
 int TRACE (int,char*) ;
 int TRUE ;
 int * addremove_io_fd ;
 int ai_fam_pref ;
 int auth_init (int ,int *) ;
 int * base ;
 scalar_t__ debug ;
 int event_base_dispatch (int *) ;
 int event_base_free (int *) ;
 int * event_base_new_with_config (struct event_config*) ;
 int event_config_free (struct event_config*) ;
 struct event_config* event_config_new () ;
 int event_config_require_features (struct event_config*,int ) ;
 int event_enable_debug_mode () ;
 int event_set_log_callback (int *) ;
 int evthread_enable_lock_debuging () ;
 int evthread_use_pthreads () ;
 int exit (int ) ;
 TYPE_2__ gap ;
 int gettimeofday_cached (int *,int *) ;
 int handle_lookup (char const*,int) ;
 int init_auth () ;
 int init_lib () ;
 scalar_t__ ipv4_works ;
 scalar_t__ ipv6_works ;
 scalar_t__ isc_net_probeipv6 () ;
 int keys ;
 int kod_init_kod_db (int ,int ) ;
 int libevent_version_ok () ;
 int max (int ,int) ;
 int min (int ,int) ;
 int msyslog (int ,char*,char const*) ;
 int ntpOptionProcess (int *,int,char**) ;
 int ntpver ;
 int open_logfile (int ) ;
 int open_sockets () ;
 int printf (char*,char*) ;
 char* progname ;
 int response_timeout ;
 TYPE_1__ response_tv ;
 int sntpOptions ;
 int sntp_addremove_fd ;
 int sntp_init_logging (char*) ;
 int sntp_libevent_log_cb ;
 int start_tv ;
 int steplimit ;
 int time_adjusted ;
 int worker_per_query ;

int
sntp_main (
 int argc,
 char **argv,
 const char *sntpVersion
 )
{
 int i;
 int exitcode;
 int optct;
 struct event_config * evcfg;


 sntp_init_logging(argv[0]);

 if (!libevent_version_ok())
  exit(EX_SOFTWARE);

 init_lib();
 init_auth();

 optct = ntpOptionProcess(&sntpOptions, argc, argv);
 argc -= optct;
 argv += optct;


 debug = OPT_VALUE_SET_DEBUG_LEVEL;

 TRACE(2, ("init_lib() done, %s%s\n",
    (ipv4_works)
        ? "ipv4_works "
        : "",
    (ipv6_works)
        ? "ipv6_works "
        : ""));
 ntpver = OPT_VALUE_NTPVERSION;
 steplimit = OPT_VALUE_STEPLIMIT / 1e3;
 gap.tv_usec = max(0, OPT_VALUE_GAP * 1000);
 gap.tv_usec = min(gap.tv_usec, 999999);

 if (HAVE_OPT(LOGFILE))
  open_logfile(OPT_ARG(LOGFILE));

 msyslog(LOG_INFO, "%s", sntpVersion);

 if (0 == argc && !HAVE_OPT(BROADCAST) && !HAVE_OPT(CONCURRENT)) {
  printf("%s: Must supply at least one of -b hostname, -c hostname, or hostname.\n",
         progname);
  exit(EX_USAGE);
 }
 response_timeout = OPT_VALUE_TIMEOUT;
 response_tv.tv_sec = response_timeout;
 response_tv.tv_usec = 0;


 if (isc_net_probeipv6() != ISC_R_SUCCESS) {
  ai_fam_pref = AF_INET;
  TRACE(1, ("No ipv6 support available, forcing ipv4\n"));
 } else {

  if (HAVE_OPT(IPV4))
   ai_fam_pref = AF_INET;
  else if (HAVE_OPT(IPV6))
   ai_fam_pref = AF_INET6;
 }
 kod_init_kod_db(OPT_ARG(KOD), FALSE);


 auth_init(OPT_ARG(KEYFILE), &keys);







 event_set_log_callback(&sntp_libevent_log_cb);
 if (debug > 0)
  event_enable_debug_mode();






 evcfg = event_config_new();
 if (((void*)0) == evcfg) {
  printf("%s: event_config_new() failed!\n", progname);
  return -1;
 }

 event_config_require_features(evcfg, EV_FEATURE_FDS);



 base = event_base_new_with_config(evcfg);
 event_config_free(evcfg);
 if (((void*)0) == base) {
  printf("%s: event_base_new() failed!\n", progname);
  return -1;
 }


 worker_per_query = TRUE;
 addremove_io_fd = &sntp_addremove_fd;

 open_sockets();

 if (HAVE_OPT(BROADCAST)) {
  int cn = STACKCT_OPT( BROADCAST );
  const char ** cp = STACKLST_OPT( BROADCAST );

  while (cn-- > 0) {
   handle_lookup(*cp, CTX_BCST);
   cp++;
  }
 }

 if (HAVE_OPT(CONCURRENT)) {
  int cn = STACKCT_OPT( CONCURRENT );
  const char ** cp = STACKLST_OPT( CONCURRENT );

  while (cn-- > 0) {
   handle_lookup(*cp, CTX_UCST | CTX_CONC);
   cp++;
  }
 }

 for (i = 0; i < argc; ++i)
  handle_lookup(argv[i], CTX_UCST);

 gettimeofday_cached(base, &start_tv);
 event_base_dispatch(base);
 event_base_free(base);

 if (!time_adjusted &&
     (ENABLED_OPT(STEP) || ENABLED_OPT(SLEW)))
  exitcode = 1;
 else
  exitcode = 0;

 return exitcode;
}
