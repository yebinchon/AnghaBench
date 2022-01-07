
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 char* AUDITFILTERD_CONFFILE ;
 char* AUDITFILTERD_PIPEFILE ;
 int O_RDONLY ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 int S_ISCHR (int ) ;
 scalar_t__ auditfilterd_conf (char const*,int *) ;
 int auditfilterd_conf_shutdown () ;
 int auditfilterd_init () ;
 scalar_t__ daemon (int ,int ) ;
 int debug ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt (int,char**,char*) ;
 int mainloop_file (char const*,char const*,int *) ;
 int mainloop_pipe (char const*,char const*,int) ;
 int open (char const*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int signal (int ,int ) ;
 int signal_handler ;
 int usage () ;

int
main(int argc, char *argv[])
{
 const char *pipefile, *trailfile, *conffile;
 FILE *trail_fp, *conf_fp;
 struct stat sb;
 int pipe_fd;
 int ch;

 conffile = AUDITFILTERD_CONFFILE;
 trailfile = ((void*)0);
 pipefile = ((void*)0);
 while ((ch = getopt(argc, argv, "c:dp:t:")) != -1) {
  switch (ch) {
  case 'c':
   conffile = optarg;
   break;

  case 'd':
   debug++;
   break;

  case 't':
   if (trailfile != ((void*)0) || pipefile != ((void*)0))
    usage();
   trailfile = optarg;
   break;

  case 'p':
   if (pipefile != ((void*)0) || trailfile != ((void*)0))
    usage();
   pipefile = optarg;
   break;

  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (argc != 0)
  usage();





 if (pipefile == ((void*)0) && trailfile == ((void*)0))
  pipefile = AUDITFILTERD_PIPEFILE;

 if (pipefile != ((void*)0)) {
  pipe_fd = open(pipefile, O_RDONLY);
  if (pipe_fd < 0)
   err(-1, "open:%s", pipefile);
  if (fstat(pipe_fd, &sb) < 0)
   err(-1, "stat: %s", pipefile);
  if (!S_ISCHR(sb.st_mode))
   errx(-1, "fstat: %s not device", pipefile);
 } else {
  trail_fp = fopen(trailfile, "r");
  if (trail_fp == ((void*)0))
   err(-1, "%s", trailfile);
 }

 conf_fp = fopen(conffile, "r");
 if (conf_fp == ((void*)0))
  err(-1, "%s", conffile);

 auditfilterd_init();
 if (auditfilterd_conf(conffile, conf_fp) < 0)
  exit(-1);
 fclose(conf_fp);

 if (!debug) {
  if (daemon(0, 0) < 0)
   err(-1, "daemon");
 }

 signal(SIGHUP, signal_handler);
 signal(SIGINT, signal_handler);
 signal(SIGQUIT, signal_handler);
 signal(SIGTERM, signal_handler);

 if (pipefile != ((void*)0))
  mainloop_pipe(conffile, pipefile, pipe_fd);
 else
  mainloop_file(conffile, trailfile, trail_fp);

 auditfilterd_conf_shutdown();
 return (0);
}
