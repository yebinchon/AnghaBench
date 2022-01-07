
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tinfo ;
typedef int term_attr ;
struct termios {char* c_cc; int c_lflag; int c_cflag; int c_oflag; int c_iflag; } ;
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef scalar_t__ pid_t ;
typedef int FILE ;


 char* DEF_SLAVE ;
 char* DEF_TERM ;
 char* DEF_TERMPATH ;
 int F_SETFL ;
 char* MAP_FAILED ;
 int MAP_FILE ;
 int MAXPATHLEN ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PROT_READ ;
 int SIGCHLD ;
 scalar_t__ S_ISDIR (int ) ;
 int TTYDEF_CFLAG ;
 int TTYDEF_IFLAG ;
 int TTYDEF_LFLAG ;
 int TTYDEF_OFLAG ;
 int TTYDEF_SPEED ;
 size_t VERASE ;
 size_t VKILL ;
 scalar_t__ asprintf (char**,char*,int ) ;
 int cfsetspeed (struct termios*,int ) ;
 char* check_path ;
 int close (int) ;
 int * cmdpipe ;
 int * cur_file ;
 char* def_check_path ;
 char* def_include_path ;
 int err (int,char*,...) ;
 scalar_t__ execl (char const*,char const*,char*,char*,char*,char*,int *) ;
 int exit (int ) ;
 int fclose (int *) ;
 int fcntl (int ,int ,int ) ;
 int * fopen (char*,char*) ;
 scalar_t__ forkpty (int *,int *,struct termios*,int *) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 char* include_path ;
 int init_parse_variables (int) ;
 int master ;
 int memset (struct termios*,int ,int) ;
 char* mmap (int *,size_t,int ,int ,int,int ) ;
 int munmap (char*,size_t) ;
 int open (char const*,int ) ;
 scalar_t__ pipe (int *) ;
 scalar_t__ setenv (char*,char const*,int) ;
 int signal (int ,int ) ;
 int slave_died ;
 int * slvpipe ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int stat (char const*,struct stat*) ;
 int * strdup (char*) ;
 int usage () ;
 int verbose ;
 int warn (char*,char*) ;
 int yyparse () ;

int
main(int argc, char *argv[])
{
 extern char *optarg;
 extern int optind;
 const char *termpath, *term, *slave;
 int ch;
 pid_t slave_pid;
 extern FILE *yyin;
 char *arg1, *arg2, *arg3, *arg4;
 struct termios term_attr;
 struct stat st;

 termpath = term = slave = ((void*)0);
 verbose = 0;

 while ((ch = getopt(argc, argv, "vC:I:p:s:t:T:")) != -1) {
  switch(ch) {
  case 'I':
   include_path = optarg;
   break;
  case 'C':
   check_path = optarg;
   break;
  case 'T':
   termpath = optarg;
   break;
  case 'p':
   termpath = optarg;
   break;
  case 's':
   slave = optarg;
   break;
  case 't':
   term = optarg;
   break;
  case 'v':
   verbose = 1;
   break;
  case '?':
  default:
   usage();
   break;
  }
 }

 argc -= optind;
 argv += optind;
 if (argc < 1)
  usage();

 if (termpath == ((void*)0))
  termpath = DEF_TERMPATH;

 if (slave == ((void*)0))
  slave = DEF_SLAVE;

 if (term == ((void*)0))
  term = DEF_TERM;

 if (check_path == ((void*)0))
  check_path = getenv("CHECK_PATH");
 if ((check_path == ((void*)0)) || (check_path[0] == '\0')) {
  warn("$CHECK_PATH not set, defaulting to %s", def_check_path);
  check_path = def_check_path;
 }

 if (include_path == ((void*)0))
  include_path = getenv("INCLUDE_PATH");
 if ((include_path == ((void*)0)) || (include_path[0] == '\0')) {
  warn("$INCLUDE_PATH not set, defaulting to %s",
   def_include_path);
  include_path = def_include_path;
 }

 signal(SIGCHLD, slave_died);

 if (setenv("TERM", term, 1) != 0)
  err(2, "Failed to set TERM variable");

 if (stat(termpath, &st) == -1)
  err(1, "Cannot stat %s", termpath);

 if (S_ISDIR(st.st_mode)) {
  char tinfo[MAXPATHLEN];
  int l = snprintf(tinfo, sizeof(tinfo), "%s/%s", termpath,
      "terminfo.cdb");
  if (stat(tinfo, &st) == -1)
   err(1, "Cannot stat `%s'", tinfo);
  if (l >= 4)
   tinfo[l - 4] = '\0';
  if (setenv("TERMINFO", tinfo, 1) != 0)
   err(1, "Failed to set TERMINFO variable");
 } else {
  int fd;
  char *tinfo;
  if ((fd = open(termpath, O_RDONLY)) == -1)
   err(1, "Cannot open `%s'", termpath);
  if ((tinfo = mmap(((void*)0), (size_t)st.st_size, PROT_READ, MAP_FILE,
   fd, 0)) == MAP_FAILED)
   err(1, "Cannot map `%s'", termpath);
  if (setenv("TERMINFO", tinfo, 1) != 0)
   err(1, "Failed to set TERMINFO variable");
  close(fd);
  munmap(tinfo, (size_t)st.st_size);
 }

 if (pipe(cmdpipe) < 0)
  err(1, "Command pipe creation failed");

 if (pipe(slvpipe) < 0)
  err(1, "Slave pipe creation failed");




 memset(&term_attr, 0, sizeof(term_attr));
 term_attr.c_iflag = TTYDEF_IFLAG;
 term_attr.c_oflag = TTYDEF_OFLAG;
 term_attr.c_cflag = TTYDEF_CFLAG;
 term_attr.c_lflag = TTYDEF_LFLAG;
 cfsetspeed(&term_attr, TTYDEF_SPEED);
 term_attr.c_cc[VERASE] = '\b';
 term_attr.c_cc[VKILL] = '\025';

 if ((slave_pid = forkpty(&master, ((void*)0), &term_attr, ((void*)0))) < 0)
  err(1, "Fork of pty for slave failed\n");

 if (slave_pid == 0) {

  if (asprintf(&arg1, "%d", cmdpipe[0]) < 0)
   err(1, "arg1 conversion failed");

  if (asprintf(&arg2, "%d", cmdpipe[1]) < 0)
   err(1, "arg2 conversion failed");

  if (asprintf(&arg3, "%d", slvpipe[0]) < 0)
   err(1, "arg3 conversion failed");

  if (asprintf(&arg4, "%d", slvpipe[1]) < 0)
   err(1, "arg4 conversion failed");

  if (execl(slave, slave, arg1, arg2, arg3, arg4, ((void*)0)) < 0)
   err(1, "Exec of slave %s failed", slave);


 }

 fcntl(master, F_SETFL, O_NONBLOCK);

 if ((yyin = fopen(argv[0], "r")) == ((void*)0))
  err(1, "Cannot open command file %s", argv[0]);

 if ((cur_file = strdup(argv[0])) == ((void*)0))
  err(2, "Failed to alloc memory for test file name");

 init_parse_variables(1);

 yyparse();
 fclose(yyin);

 exit(0);
}
