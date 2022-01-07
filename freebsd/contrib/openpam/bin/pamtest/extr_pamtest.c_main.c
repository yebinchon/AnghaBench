
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hostname ;


 long INT_MAX ;
 int OPENPAM_RESTRICT_MODULE_NAME ;
 int OPENPAM_RESTRICT_SERVICE_NAME ;
 int OPENPAM_VERIFY_MODULE_FILE ;
 int OPENPAM_VERIFY_POLICY_FILE ;
 int PAM_CHANGE_EXPIRED_AUTHTOK ;
 int PAM_DELETE_CRED ;
 int PAM_ESTABLISH_CRED ;
 int PAM_HOST ;
 int PAM_RHOST ;
 int PAM_RUSER ;
 int PAM_SILENT ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int PAM_TTY ;
 int STDERR_FILENO ;
 int err (int,char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int gethostname (char*,int) ;
 char* getlogin () ;
 int getopt (int,char**,char*) ;
 int openpam_debug ;
 int openpam_set_feature (int ,int ) ;
 int openpam_ttyconv_timeout ;
 int opt_num_once (int,long*,int ) ;
 int opt_str_once (int,char const**,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int pt_acct_mgmt (int ) ;
 int pt_authenticate (int ) ;
 int pt_chauthtok (int ) ;
 int pt_close_session (int ) ;
 int pt_end (int) ;
 int pt_listenv () ;
 int pt_open_session (int ) ;
 int pt_set_item (int ,char const*) ;
 int pt_setcred (int ) ;
 int pt_start (char const*,char const*) ;
 int silent ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* ttyname (int ) ;
 int usage () ;
 int verbose ;
 int warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 char hostname[1024];
 const char *rhost = ((void*)0);
 const char *host = ((void*)0);
 const char *ruser = ((void*)0);
 const char *user = ((void*)0);
 const char *service = ((void*)0);
 const char *tty = ((void*)0);
 long timeout = 0;
 int keepatit = 0;
 int pame;
 int opt;

 while ((opt = getopt(argc, argv, "dH:h:kMPsT:t:U:u:v")) != -1)
  switch (opt) {
  case 'd':
   openpam_debug++;
   break;
  case 'H':
   opt_str_once(opt, &rhost, optarg);
   break;
  case 'h':
   opt_str_once(opt, &host, optarg);
   break;
  case 'k':
   keepatit = 1;
   break;
  case 'M':
   openpam_set_feature(OPENPAM_RESTRICT_MODULE_NAME, 0);
   openpam_set_feature(OPENPAM_VERIFY_MODULE_FILE, 0);
   break;
  case 'P':
   openpam_set_feature(OPENPAM_RESTRICT_SERVICE_NAME, 0);
   openpam_set_feature(OPENPAM_VERIFY_POLICY_FILE, 0);
   break;
  case 's':
   silent = PAM_SILENT;
   break;
  case 'T':
   opt_num_once(opt, &timeout, optarg);
   if (timeout < 0 || timeout > INT_MAX) {
    fprintf(stderr,
        "Invalid conversation timeout\n");
    usage();
   }
   openpam_ttyconv_timeout = (int)timeout;
   break;
  case 't':
   opt_str_once(opt, &tty, optarg);
   break;
  case 'U':
   opt_str_once(opt, &ruser, optarg);
   break;
  case 'u':
   opt_str_once(opt, &user, optarg);
   break;
  case 'v':
   verbose++;
   break;
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 service = *argv;
 --argc;
 ++argv;


 if (service == ((void*)0))
  service = "pamtest";
 if (rhost == ((void*)0)) {
  if (gethostname(hostname, sizeof(hostname)) == -1)
   err(1, "gethostname()");
  rhost = hostname;
 }
 if (tty == ((void*)0))
  tty = ttyname(STDERR_FILENO);
 if (user == ((void*)0))
  user = getlogin();
 if (ruser == ((void*)0))
  ruser = user;


 if ((pame = pt_start(service, user)) != PAM_SUCCESS)
  goto end;





 if (host != ((void*)0))
  if ((pame = pt_set_item(PAM_HOST, host)) != PAM_SUCCESS)
      goto end;





 if ((pame = pt_set_item(PAM_RHOST, rhost)) != PAM_SUCCESS ||
     (pame = pt_set_item(PAM_RUSER, ruser)) != PAM_SUCCESS ||
     (pame = pt_set_item(PAM_TTY, tty)) != PAM_SUCCESS)
  goto end;

 while (argc > 0) {
  if (strcmp(*argv, "listenv") == 0 ||
      strcmp(*argv, "env") == 0) {
   pame = pt_listenv();
  } else if (strcmp(*argv, "authenticate") == 0 ||
      strcmp(*argv, "auth") == 0) {
   pame = pt_authenticate(0);
  } else if (strcmp(*argv, "acct_mgmt") == 0 ||
      strcmp(*argv, "account") == 0) {
   pame = pt_acct_mgmt(0);
  } else if (strcmp(*argv, "chauthtok") == 0 ||
      strcmp(*argv, "change") == 0) {
   pame = pt_chauthtok(PAM_CHANGE_EXPIRED_AUTHTOK);
  } else if (strcmp(*argv, "forcechauthtok") == 0 ||
      strcmp(*argv, "forcechange") == 0) {
   pame = pt_chauthtok(0);
  } else if (strcmp(*argv, "setcred") == 0 ||
      strcmp(*argv, "establish_cred") == 0) {
   pame = pt_setcred(PAM_ESTABLISH_CRED);
  } else if (strcmp(*argv, "open_session") == 0 ||
      strcmp(*argv, "open") == 0) {
   pame = pt_open_session(0);
  } else if (strcmp(*argv, "close_session") == 0 ||
      strcmp(*argv, "close") == 0) {
   pame = pt_close_session(0);
  } else if (strcmp(*argv, "unsetcred") == 0 ||
      strcmp(*argv, "delete_cred") == 0) {
   pame = pt_setcred(PAM_DELETE_CRED);
  } else {
   warnx("unknown primitive: %s", *argv);
   pame = PAM_SYSTEM_ERR;
  }
  if (pame != PAM_SUCCESS && !keepatit) {
   warnx("test aborted");
   break;
  }
  --argc;
  ++argv;
 }

end:
 (void)pt_end(pame);
 exit(pame == PAM_SUCCESS ? 0 : 1);
}
