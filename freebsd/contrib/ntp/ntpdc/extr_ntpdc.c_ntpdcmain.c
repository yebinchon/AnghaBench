
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l_uf; scalar_t__ l_ui; } ;


 int ADDCMD (char*) ;
 int ADDHOST (char*) ;
 void* AF_INET ;
 void* AF_INET6 ;
 int COMMAND ;
 int DEFDELAY ;
 char* DEFHOST ;
 scalar_t__ HAVE_OPT (int ) ;
 int INITDATASIZE ;
 int INTERACTIVE ;
 int IPV4 ;
 int IPV6 ;
 int LISTPEERS ;
 int NUMERIC ;
 int OPT_VALUE_SET_DEBUG_LEVEL ;
 int PEERS ;
 int SHOWPEERS ;
 int SIGINT ;
 int STACKCT_OPT (int ) ;
 char** STACKLST_OPT (int ) ;
 int WSACleanup () ;
 int abortcmd ;
 void* ai_fam_default ;
 void* ai_fam_templ ;
 int * ccmds ;
 char** chosts ;
 int clear_globals () ;
 int debug ;
 TYPE_1__ delay_time ;
 int docmd (int ) ;
 int emalloc (int ) ;
 int fileno (int ) ;
 int getcmds () ;
 int init_auth () ;
 int init_lib () ;
 int interactive ;
 int ipv6_works ;
 scalar_t__ isatty (int ) ;
 int ntpOptionProcess (int *,int,char**) ;
 int ntp_optind ;
 int ntpdcOptions ;
 int numcmds ;
 int numhosts ;
 scalar_t__ openhost (char*) ;
 int pktdata ;
 int pktdatasize ;
 int printf (char*,char*) ;
 char* progname ;
 scalar_t__ showhostnames ;
 int signal_no_reset (int ,int ) ;
 int ssl_applink () ;
 int stderr ;
 int stdin ;
 int taskIdSelf () ;
 int taskPrioritySet (int ,int) ;

int
ntpdcmain(
 int argc,
 char *argv[]
 )
{
 delay_time.l_ui = 0;
 delay_time.l_uf = DEFDELAY;






 init_lib();
 ssl_applink();
 init_auth();


 if (!ipv6_works)
  ai_fam_default = AF_INET;

 progname = argv[0];

 {
  int optct = ntpOptionProcess(&ntpdcOptions, argc, argv);
  argc -= optct;
  argv += optct;
 }

 if (HAVE_OPT(IPV4))
  ai_fam_templ = AF_INET;
 else if (HAVE_OPT(IPV6))
  ai_fam_templ = AF_INET6;
 else
  ai_fam_templ = ai_fam_default;

 if (HAVE_OPT(COMMAND)) {
  int cmdct = STACKCT_OPT( COMMAND );
  const char** cmds = STACKLST_OPT( COMMAND );

  while (cmdct-- > 0) {
   ADDCMD(*cmds++);
  }
 }

 debug = OPT_VALUE_SET_DEBUG_LEVEL;

 if (HAVE_OPT(INTERACTIVE)) {
  interactive = 1;
 }

 if (HAVE_OPT(NUMERIC)) {
  showhostnames = 0;
 }

 if (HAVE_OPT(LISTPEERS)) {
  ADDCMD("listpeers");
 }

 if (HAVE_OPT(PEERS)) {
  ADDCMD("peers");
 }

 if (HAVE_OPT(SHOWPEERS)) {
  ADDCMD("dmpeers");
 }

 if (ntp_optind == argc) {
  ADDHOST(DEFHOST);
 } else {
  for (; ntp_optind < argc; ntp_optind++)
      ADDHOST(argv[ntp_optind]);
 }

 if (numcmds == 0 && interactive == 0
     && isatty(fileno(stdin)) && isatty(fileno(stderr))) {
  interactive = 1;
 }


 if (interactive)
  (void) signal_no_reset(SIGINT, abortcmd);





 pktdatasize = INITDATASIZE;
 pktdata = emalloc(INITDATASIZE);

 if (numcmds == 0) {
  (void) openhost(chosts[0]);
  getcmds();
 } else {
  int ihost;
  int icmd;

  for (ihost = 0; ihost < numhosts; ihost++) {
   if (openhost(chosts[ihost]))
       for (icmd = 0; icmd < numcmds; icmd++) {
        if (numhosts > 1)
     printf ("--- %s ---\n",chosts[ihost]);
        docmd(ccmds[icmd]);
       }
  }
 }



 return(0);
}
