
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u_int ;
struct recvbuf {int dummy; } ;
struct pollfd {int dummy; } ;
struct TYPE_10__ {size_t ni_namelist_len; char** ni_namelist_val; } ;
typedef TYPE_1__ ni_namelist ;
struct TYPE_11__ {int l_uf; int l_ui; } ;
typedef TYPE_2__ l_fp ;
typedef void* fd_set ;
struct TYPE_12__ {int tv_sec; } ;


 int AF_INET ;
 int AF_INET6 ;
 int BUFSIZ ;
 int DEFSAMPLES ;
 scalar_t__ EINTR ;
 int EOF ;
 int ExpandEnvironmentStrings (int ,char*,int ) ;
 int KEYFILE ;
 int LFPTOFP (TYPE_2__*) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_NDELAY ;
 int LOG_NOTICE ;
 int LOG_NTP ;
 int LOG_PID ;
 int LOG_UPTO (int ) ;
 int MAX_PATH ;
 int MINTIMEOUT ;
 int NTPDATE_PRIO ;
 int NTP_SHIFT ;
 int PRIO_PROCESS ;
 int SOCKET_ERROR ;
 int TIMER_HZ ;
 int Version ;
 int WSACleanup () ;
 scalar_t__ WSAEINTR ;
 scalar_t__ WSAGetLastError () ;
 int _IOLBF ;
 int addserver (char*) ;
 int ai_fam_templ ;
 scalar_t__ alarm_flag ;
 int always_step ;
 void* atoi (char*) ;
 int atolfp (char*,TYPE_2__*) ;
 int authistrusted (int) ;
 int authreadkeys (char*) ;
 int authtrust (int,int) ;
 int clear_globals () ;
 int clock_adjust () ;
 int close (int ) ;
 scalar_t__ complete_servers ;
 scalar_t__ debug ;
 scalar_t__ errno ;
 int exit (int) ;
 int fd ;
 void* fdmask ;
 int fprintf (int ,char*,char*,...) ;
 int free (TYPE_1__*) ;
 int freerecvbuf (struct recvbuf*) ;
 int full_recvbuffs () ;
 struct recvbuf* get_full_recv_buffer () ;
 TYPE_1__* getnetinfoservers () ;
 int init_alarm () ;
 int init_auth () ;
 int init_io () ;
 int init_lib () ;
 scalar_t__ initializing ;
 int input_handler () ;
 int ipv6_works ;
 char* key_file ;
 char* key_file_storage ;
 int max (int,int ) ;
 int maxfd ;
 int msyslog (int ,char*,...) ;
 scalar_t__ nbsock ;
 int never_step ;
 int ni_namelist_free (TYPE_1__*) ;
 int nice (int ) ;
 int ntp_getopt (int,char**,char*) ;
 char* ntp_optarg ;
 int ntp_optind ;
 int ntpdate_timerid ;
 int openlog (char*,int,...) ;
 int poll (void*,unsigned int,int) ;
 char* progname ;
 int receive (struct recvbuf*) ;
 int select (int ,void**,int *,int *,TYPE_3__*) ;
 int setlinebuf (int ) ;
 int setlogmask (int ) ;
 int setpriority (int ,int ,int ) ;
 int setvbuf (int ,char*,int ,int) ;
 int simple_query ;
 int ssl_applink () ;
 int stderr ;
 int stdout ;
 int sys_authdelay ;
 int sys_authenticate ;
 int sys_authkey ;
 scalar_t__ sys_numservers ;
 scalar_t__ sys_samples ;
 int sys_timeout ;
 void* sys_version ;
 int syslogit ;
 int taskIdSelf () ;
 int taskPrioritySet (int ,int ) ;
 TYPE_3__ timeout ;
 int timer () ;
 int timer_delete (int ) ;
 int unpriv_port ;
 int verbose ;

int
ntpdatemain (
 int argc,
 char *argv[]
 )
{
 int was_alarmed;
 int tot_recvbufs;
 struct recvbuf *rbuf;
 l_fp tmp;
 int errflg;
 int c;
 int nfound;
 init_lib();


 if (!ipv6_works)
  ai_fam_templ = AF_INET;

 errflg = 0;
 progname = argv[0];
 syslogit = 0;




 while ((c = ntp_getopt(argc, argv, "46a:bBde:k:o:p:qst:uv")) != EOF)
  switch (c)
  {
  case '4':
   ai_fam_templ = AF_INET;
   break;
  case '6':
   ai_fam_templ = AF_INET6;
   break;
  case 'a':
   c = atoi(ntp_optarg);
   sys_authenticate = 1;
   sys_authkey = c;
   break;
  case 'b':
   always_step++;
   never_step = 0;
   break;
  case 'B':
   never_step++;
   always_step = 0;
   break;
  case 'd':
   ++debug;
   break;
  case 'e':
   if (!atolfp(ntp_optarg, &tmp)
   || tmp.l_ui != 0) {
    (void) fprintf(stderr,
        "%s: encryption delay %s is unlikely\n",
        progname, ntp_optarg);
    errflg++;
   } else {
    sys_authdelay = tmp.l_uf;
   }
   break;
  case 'k':
   key_file = ntp_optarg;
   break;
  case 'o':
   sys_version = atoi(ntp_optarg);
   break;
  case 'p':
   c = atoi(ntp_optarg);
   if (c <= 0 || c > NTP_SHIFT) {
    (void) fprintf(stderr,
        "%s: number of samples (%d) is invalid\n",
        progname, c);
    errflg++;
   } else {
    sys_samples = c;
   }
   break;
  case 'q':
   simple_query = 1;
   break;
  case 's':
   syslogit = 1;
   break;
  case 't':
   if (!atolfp(ntp_optarg, &tmp)) {
    (void) fprintf(stderr,
        "%s: timeout %s is undecodeable\n",
        progname, ntp_optarg);
    errflg++;
   } else {
    sys_timeout = ((LFPTOFP(&tmp) * TIMER_HZ)
        + 0x8000) >> 16;
    sys_timeout = max(sys_timeout, MINTIMEOUT);
   }
   break;
  case 'v':
   verbose = 1;
   break;
  case 'u':
   unpriv_port = 1;
   break;
  case '?':
   ++errflg;
   break;
  default:
   break;
     }

 if (errflg) {
  (void) fprintf(stderr,
      "usage: %s [-46bBdqsuv] [-a key#] [-e delay] [-k file] [-p samples] [-o version#] [-t timeo] server ...\n",
      progname);
  exit(2);
 }






 if (sys_samples == 0)
   sys_samples = (simple_query ? 1 : DEFSAMPLES);

 if (debug || simple_query) {




  setlinebuf(stdout);

 }




 if (syslogit) {


  openlog("ntpdate", LOG_PID);
 }

 if (debug || verbose)
  msyslog(LOG_NOTICE, "%s", Version);
 for ( ; ntp_optind < argc; ntp_optind++)
  addserver(argv[ntp_optind]);
 if (sys_numservers == 0) {
  msyslog(LOG_ERR, "no servers can be used, exiting");
  exit(1);
 }




 if (sys_authenticate) {
  init_auth();
  if (!authreadkeys(key_file)) {
   msyslog(LOG_ERR, "no key file <%s>, exiting", key_file);
   exit(1);
  }
  authtrust(sys_authkey, 1);
  if (!authistrusted(sys_authkey)) {
   msyslog(LOG_ERR, "authentication key %lu unknown",
    (unsigned long) sys_authkey);
   exit(1);
  }
 }
 init_io();
 init_alarm();
 initializing = 0;
 was_alarmed = 0;

 while (complete_servers < sys_numservers) {




  fd_set rdfdes;
  rdfdes = fdmask;


  if (alarm_flag) {
   was_alarmed = 1;
   alarm_flag = 0;
  }
  tot_recvbufs = full_recvbuffs();

  if (!was_alarmed && tot_recvbufs == 0) {







   nfound = select(maxfd, &rdfdes, ((void*)0), ((void*)0),
     &timeout);

   if (nfound > 0)
    input_handler();
   else if (nfound == SOCKET_ERROR)
   {

    if (errno != EINTR)



     msyslog(LOG_ERR,



      "select() error: %m"

      );
   } else if (errno != 0) {

    msyslog(LOG_DEBUG,



     "select(): nfound = %d, error: %m",

     nfound);

   }
   if (alarm_flag) {
    was_alarmed = 1;
    alarm_flag = 0;
   }
   tot_recvbufs = full_recvbuffs();
  }





  rbuf = get_full_recv_buffer();
  while (rbuf != ((void*)0))
  {
   receive(rbuf);
   freerecvbuf(rbuf);
   rbuf = get_full_recv_buffer();
  }




  if (was_alarmed) {
   timer();
   was_alarmed = 0;
  }




 }
 return clock_adjust();
}
