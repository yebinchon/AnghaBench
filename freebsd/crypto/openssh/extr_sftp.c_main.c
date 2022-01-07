
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sftp_conn {int dummy; } ;
typedef int args ;
struct TYPE_6__ {int * list; } ;
typedef TYPE_1__ arglist ;
typedef int LogLevel ;


 size_t DEFAULT_COPY_BUFLEN ;
 size_t DEFAULT_NUM_REQUESTS ;
 scalar_t__ EINTR ;
 int SHUT_RDWR ;
 int STDERR_FILENO ;
 int SYSLOG_FACILITY_USER ;
 int SYSLOG_LEVEL_DEBUG1 ;
 int SYSLOG_LEVEL_ERROR ;
 int SYSLOG_LEVEL_INFO ;
 char* _PATH_SFTP_SERVER ;
 char* _PATH_SSH_PROGRAM ;
 int __progname ;
 int a2port (char*) ;
 int addargs (TYPE_1__*,char*,...) ;
 int batchmode ;
 char* cleanhostname (char*) ;
 int close (int) ;
 int connect_to_server (char*,int *,int*,int*) ;
 struct sftp_conn* do_init (int,int,size_t,size_t,long long) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fatal (char*,...) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int freeargs (TYPE_1__*) ;
 int getopt (int,char**,char*) ;
 int global_aflag ;
 int global_fflag ;
 int global_pflag ;
 int global_rflag ;
 int * infile ;
 int interactive_loop (struct sftp_conn*,char*,char*) ;
 int isatty (int ) ;
 int log_init (char*,int ,int ,int) ;
 int memset (TYPE_1__*,char,int) ;
 int msetlocale () ;
 int parse_uri (char*,char*,char**,char**,int*,char**) ;
 int parse_user_host_path (char*,char**,char**,char**) ;
 int quiet ;
 int replacearg (TYPE_1__*,int ,char*,char*) ;
 int sanitise_stdfd () ;
 scalar_t__ showprogress ;
 int shutdown (int,int ) ;
 int ssh_get_progname (char*) ;
 int ssh_malloc_init () ;
 int sshpid ;
 int stderr ;
 int * stdin ;
 int * strchr (char*,char) ;
 int strcmp (char*,char*) ;
 char* strerror (scalar_t__) ;
 size_t strtol (char*,char**,int) ;
 long long strtonum (char*,int,int,char const**) ;
 int usage () ;
 int waitpid (int,int *,int ) ;
 char* xstrdup (char*) ;

int
main(int argc, char **argv)
{
 int in, out, ch, err, tmp, port = -1;
 char *host = ((void*)0), *user, *cp, *file2 = ((void*)0);
 int debug_level = 0, sshver = 2;
 char *file1 = ((void*)0), *sftp_server = ((void*)0);
 char *ssh_program = _PATH_SSH_PROGRAM, *sftp_direct = ((void*)0);
 const char *errstr;
 LogLevel ll = SYSLOG_LEVEL_INFO;
 arglist args;
 extern int optind;
 extern char *optarg;
 struct sftp_conn *conn;
 size_t copy_buffer_len = DEFAULT_COPY_BUFLEN;
 size_t num_requests = DEFAULT_NUM_REQUESTS;
 long long limit_kbps = 0;

 ssh_malloc_init();

 sanitise_stdfd();
 msetlocale();

 __progname = ssh_get_progname(argv[0]);
 memset(&args, '\0', sizeof(args));
 args.list = ((void*)0);
 addargs(&args, "%s", ssh_program);
 addargs(&args, "-oForwardX11 no");
 addargs(&args, "-oForwardAgent no");
 addargs(&args, "-oPermitLocalCommand no");
 addargs(&args, "-oClearAllForwardings yes");

 ll = SYSLOG_LEVEL_INFO;
 infile = stdin;

 while ((ch = getopt(argc, argv,
     "1246afhpqrvCc:D:i:l:o:s:S:b:B:F:P:R:")) != -1) {
  switch (ch) {

  case '4':
  case '6':
  case 'C':
   addargs(&args, "-%c", ch);
   break;

  case 'F':
  case 'c':
  case 'i':
  case 'o':
   addargs(&args, "-%c", ch);
   addargs(&args, "%s", optarg);
   break;
  case 'q':
   ll = SYSLOG_LEVEL_ERROR;
   quiet = 1;
   showprogress = 0;
   addargs(&args, "-%c", ch);
   break;
  case 'P':
   port = a2port(optarg);
   if (port <= 0)
    fatal("Bad port \"%s\"\n", optarg);
   break;
  case 'v':
   if (debug_level < 3) {
    addargs(&args, "-v");
    ll = SYSLOG_LEVEL_DEBUG1 + debug_level;
   }
   debug_level++;
   break;
  case '1':
   sshver = 1;
   if (sftp_server == ((void*)0))
    sftp_server = _PATH_SFTP_SERVER;
   break;
  case '2':
   sshver = 2;
   break;
  case 'a':
   global_aflag = 1;
   break;
  case 'B':
   copy_buffer_len = strtol(optarg, &cp, 10);
   if (copy_buffer_len == 0 || *cp != '\0')
    fatal("Invalid buffer size \"%s\"", optarg);
   break;
  case 'b':
   if (batchmode)
    fatal("Batch file already specified.");


   if (strcmp(optarg, "-") != 0 &&
       (infile = fopen(optarg, "r")) == ((void*)0))
    fatal("%s (%s).", strerror(errno), optarg);
   showprogress = 0;
   quiet = batchmode = 1;
   addargs(&args, "-obatchmode yes");
   break;
  case 'f':
   global_fflag = 1;
   break;
  case 'p':
   global_pflag = 1;
   break;
  case 'D':
   sftp_direct = optarg;
   break;
  case 'l':
   limit_kbps = strtonum(optarg, 1, 100 * 1024 * 1024,
       &errstr);
   if (errstr != ((void*)0))
    usage();
   limit_kbps *= 1024;
   break;
  case 'r':
   global_rflag = 1;
   break;
  case 'R':
   num_requests = strtol(optarg, &cp, 10);
   if (num_requests == 0 || *cp != '\0')
    fatal("Invalid number of requests \"%s\"",
        optarg);
   break;
  case 's':
   sftp_server = optarg;
   break;
  case 'S':
   ssh_program = optarg;
   replacearg(&args, 0, "%s", ssh_program);
   break;
  case 'h':
  default:
   usage();
  }
 }

 if (!isatty(STDERR_FILENO))
  showprogress = 0;

 log_init(argv[0], ll, SYSLOG_FACILITY_USER, 1);

 if (sftp_direct == ((void*)0)) {
  if (optind == argc || argc > (optind + 2))
   usage();
  argv += optind;

  switch (parse_uri("sftp", *argv, &user, &host, &tmp, &file1)) {
  case -1:
   usage();
   break;
  case 0:
   if (tmp != -1)
    port = tmp;
   break;
  default:
   if (parse_user_host_path(*argv, &user, &host,
       &file1) == -1) {

    host = xstrdup(*argv);
    host = cleanhostname(host);
   }
   break;
  }
  file2 = *(argv + 1);

  if (!*host) {
   fprintf(stderr, "Missing hostname\n");
   usage();
  }

  if (port != -1)
   addargs(&args, "-oPort %d", port);
  if (user != ((void*)0)) {
   addargs(&args, "-l");
   addargs(&args, "%s", user);
  }
  addargs(&args, "-oProtocol %d", sshver);


  if (sftp_server == ((void*)0) || strchr(sftp_server, '/') == ((void*)0))
   addargs(&args, "-s");

  addargs(&args, "--");
  addargs(&args, "%s", host);
  addargs(&args, "%s", (sftp_server != ((void*)0) ?
      sftp_server : "sftp"));

  connect_to_server(ssh_program, args.list, &in, &out);
 } else {
  args.list = ((void*)0);
  addargs(&args, "sftp-server");

  connect_to_server(sftp_direct, args.list, &in, &out);
 }
 freeargs(&args);

 conn = do_init(in, out, copy_buffer_len, num_requests, limit_kbps);
 if (conn == ((void*)0))
  fatal("Couldn't initialise connection to server");

 if (!quiet) {
  if (sftp_direct == ((void*)0))
   fprintf(stderr, "Connected to %s.\n", host);
  else
   fprintf(stderr, "Attached to %s.\n", sftp_direct);
 }

 err = interactive_loop(conn, file1, file2);


 shutdown(in, SHUT_RDWR);
 shutdown(out, SHUT_RDWR);


 close(in);
 close(out);
 if (batchmode)
  fclose(infile);

 while (waitpid(sshpid, ((void*)0), 0) == -1 && sshpid > 1)
  if (errno != EINTR)
   fatal("Couldn't wait for ssh process: %s",
       strerror(errno));

 exit(err == 0 ? 0 : 1);
}
