
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct winsize {int ws_col; } ;
struct tag_files {char* tagname; int ofd; scalar_t__ tcpgid; int ofn; } ;
struct TYPE_5__ {int synopsisonly; int width; int indent; char* tag; int noval; } ;
struct TYPE_4__ {int * paths; } ;
struct mansearch {char* outkey; int argmode; int outtype; char* os_s; char* arch; char* sec; int firstmatch; int mp; int * outdata; scalar_t__ wstop; TYPE_2__ output; TYPE_1__ manpath; int os_e; TYPE_2__* outopts; } ;
struct manpage {char* file; char* names; char* output; size_t ipath; int sec; scalar_t__ form; scalar_t__ bits; } ;
struct manconf {char* outkey; int argmode; int outtype; char* os_s; char* arch; char* sec; int firstmatch; int mp; int * outdata; scalar_t__ wstop; TYPE_2__ output; TYPE_1__ manpath; int os_e; TYPE_2__* outopts; } ;
struct curparse {char* outkey; int argmode; int outtype; char* os_s; char* arch; char* sec; int firstmatch; int mp; int * outdata; scalar_t__ wstop; TYPE_2__ output; TYPE_1__ manpath; int os_e; TYPE_2__* outopts; } ;
typedef int ssize_t ;
typedef scalar_t__ pid_t ;
typedef enum outmode { ____Placeholder_outmode } outmode ;
typedef int conf ;
typedef int FILE ;


 void* ARG_EXPR ;


 void* ARG_WORD ;
 char* BINM_APROPOS ;
 char* BINM_MAKEWHATIS ;
 char* BINM_MAN ;
 char* BINM_WHATIS ;
 scalar_t__ EINTR ;
 scalar_t__ FORM_SRC ;
 char* MACHINE ;
 int MANDOCERR_BADARG_BAD ;
 int MANDOCERR_BADARG_DUPE ;
 int MANDOCERR_BASE ;
 int MANDOCERR_OPEN ;
 int MANDOCERR_PLEDGE ;
 int MANDOCERR_WAIT ;
 int MANDOCERR_WRITE ;
 int MANDOCLEVEL_BADARG ;
 scalar_t__ MANDOCLEVEL_OK ;
 scalar_t__ MANDOCLEVEL_SYSERR ;
 int MPARSE_LATIN1 ;
 int MPARSE_MAN ;
 int MPARSE_MDOC ;
 int MPARSE_SO ;
 int MPARSE_UTF8 ;
 int MPARSE_VALIDATE ;
 int OUTMODE_ALL ;
 int OUTMODE_DEF ;
 int OUTMODE_FLN ;
 int OUTMODE_LST ;
 int OUTMODE_ONE ;


 int OUTT_LINT ;

 int OUTT_MAN ;
 int OUTT_MARKDOWN ;


 int OUTT_TREE ;

 int O_DIRECTORY ;
 int O_RDONLY ;
 int R_OK ;
 int SANDBOX_NAMED ;
 int SIGCONT ;
 int SIGSTOP ;
 int SIGTTIN ;
 size_t SIZE_MAX ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int WIFSTOPPED (int) ;
 int WSTOPSIG (int) ;
 int WUNTRACED ;
 int access (char*,int ) ;
 int ascii_free (int *) ;
 int chdir (int ) ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int fchdir (int) ;
 int fclose (int ) ;
 scalar_t__ ferror (int ) ;
 int free (char*) ;
 int fs_search (struct mansearch*,TYPE_1__*,int,char**,struct manpage**,size_t*) ;
 char* getenv (char*) ;
 int getline (char**,size_t*,int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getpgid (int ) ;
 scalar_t__ getpid () ;
 int getppid () ;
 char* getprogname () ;
 char** help_argv ;
 int html_free (int *) ;
 int ioctl (int ,int ,struct winsize*) ;
 scalar_t__ isalpha (unsigned char) ;
 int isatty (int ) ;
 scalar_t__ isdigit (unsigned char) ;
 int kSBXProfileNoInternet ;
 int kill (scalar_t__,int) ;
 int manconf_free (struct mansearch*) ;
 int manconf_output (TYPE_2__*,int ,int ) ;
 int manconf_parse (struct mansearch*,char*,char*,char*) ;
 int mandoc_msg (int ,int ,int ,char*,char*,...) ;
 scalar_t__ mandoc_msg_getrc () ;
 int mandoc_msg_setinfilename (char const*) ;
 int mandoc_msg_setmin (int ) ;
 int mandoc_msg_setoutfile (int ) ;
 int mandoc_msg_setrc (int ) ;
 int mandoc_msg_summary () ;
 struct manpage* mandoc_reallocarray (struct manpage*,size_t,int) ;
 void* mandoc_strdup (char*) ;
 int mandoc_xr_free () ;
 int mandocdb (int,char**) ;
 int mansearch (struct mansearch*,TYPE_1__*,int,char**,struct manpage**,size_t*) ;
 int mansearch_free (struct manpage*,size_t) ;
 int mchars_alloc () ;
 int mchars_free () ;
 int memset (struct mansearch*,int ,int) ;
 int mparse_alloc (int,int ,char*) ;
 int mparse_free (int ) ;
 int mparse_open (int ,char const*) ;
 int mparse_reset (int ) ;
 int open (char*,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int outdata_alloc (struct mansearch*) ;
 int parse (struct mansearch*,int,char const*) ;
 int passthrough (int,int) ;
 int pclose (int *) ;
 int pledge (char*,int *) ;
 int * popen (char*,char*) ;
 int printf (char*,char*,char*) ;
 int pspdf_free (int *) ;
 int puts (char*) ;
 int sandbox_init (int ,int ,int *) ;
 int* sec_prios ;
 int setprogname (char const*) ;
 scalar_t__ spawn_pager (struct tag_files*) ;
 int stderr ;
 int stdout ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcspn (char const*,char*) ;
 char* strdup (char*) ;
 char* strerror (scalar_t__) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;
 char* strrchr (char*,char) ;
 int strsep (char**,char*) ;
 struct tag_files* tag_init () ;
 int tag_unlink () ;
 int tag_write () ;
 scalar_t__ tcgetpgrp (int ) ;
 int tcsetpgrp (int ,scalar_t__) ;
 int terminal_sepline (int *) ;
 int usage (int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;
 int warnx (char*) ;
 int woptions (struct mansearch*,char*) ;

int
main(int argc, char *argv[])
{
 struct manconf conf;
 struct mansearch search;
 struct curparse curp;
 struct winsize ws;
 struct tag_files *tag_files;
 struct manpage *res, *resp;
 const char *progname, *sec, *thisarg;
 char *conf_file, *defpaths, *auxpaths;
 char *oarg, *tagarg;
 unsigned char *uc;
 size_t i, sz, ssz;
 int prio, best_prio;
 enum outmode outmode;
 int fd, startdir;
 int show_usage;
 int options;
 int use_pager;
 int status, signum;
 int c;
 pid_t pager_pid, tc_pgid, man_pgid, pid;




 if (argc < 1)
  progname = mandoc_strdup("mandoc");
 else if ((progname = strrchr(argv[0], '/')) == ((void*)0))
  progname = argv[0];
 else
  ++progname;
 setprogname(progname);


 mandoc_msg_setoutfile(stderr);
 if (strncmp(progname, "mandocdb", 8) == 0 ||
     strcmp(progname, BINM_MAKEWHATIS) == 0)
  return mandocdb(argc, argv);
 memset(&conf, 0, sizeof(conf));
 conf_file = defpaths = ((void*)0);
 auxpaths = ((void*)0);

 memset(&search, 0, sizeof(struct mansearch));
 search.outkey = "Nd";
 oarg = ((void*)0);

 if (strcmp(progname, BINM_MAN) == 0)
  search.argmode = 134;
 else if (strcmp(progname, BINM_APROPOS) == 0)
  search.argmode = ARG_EXPR;
 else if (strcmp(progname, BINM_WHATIS) == 0)
  search.argmode = ARG_WORD;
 else if (strncmp(progname, "help", 4) == 0)
  search.argmode = 134;
 else
  search.argmode = 135;



 memset(&curp, 0, sizeof(struct curparse));
 curp.outtype = 131;
 curp.outopts = &conf.output;
 options = MPARSE_SO | MPARSE_UTF8 | MPARSE_LATIN1;

 use_pager = 1;
 tag_files = ((void*)0);
 show_usage = 0;
 outmode = OUTMODE_DEF;

 while ((c = getopt(argc, argv,
     "aC:cfhI:iK:klM:m:O:S:s:T:VW:w")) != -1) {
  if (c == 'i' && search.argmode == ARG_EXPR) {
   optind--;
   break;
  }
  switch (c) {
  case 'a':
   outmode = OUTMODE_ALL;
   break;
  case 'C':
   conf_file = optarg;
   break;
  case 'c':
   use_pager = 0;
   break;
  case 'f':
   search.argmode = ARG_WORD;
   break;
  case 'h':
   conf.output.synopsisonly = 1;
   use_pager = 0;
   outmode = OUTMODE_ALL;
   break;
  case 'I':
   if (strncmp(optarg, "os=", 3) != 0) {
    mandoc_msg(MANDOCERR_BADARG_BAD, 0, 0,
        "-I %s", optarg);
    return mandoc_msg_getrc();
   }
   if (curp.os_s != ((void*)0)) {
    mandoc_msg(MANDOCERR_BADARG_DUPE, 0, 0,
        "-I %s", optarg);
    return mandoc_msg_getrc();
   }
   curp.os_s = mandoc_strdup(optarg + 3);
   break;
  case 'K':
   options &= ~(MPARSE_UTF8 | MPARSE_LATIN1);
   if (strcmp(optarg, "utf-8") == 0)
    options |= MPARSE_UTF8;
   else if (strcmp(optarg, "iso-8859-1") == 0)
    options |= MPARSE_LATIN1;
   else if (strcmp(optarg, "us-ascii") != 0) {
    mandoc_msg(MANDOCERR_BADARG_BAD, 0, 0,
        "-K %s", optarg);
    return mandoc_msg_getrc();
   }
   break;
  case 'k':
   search.argmode = ARG_EXPR;
   break;
  case 'l':
   search.argmode = 135;
   outmode = OUTMODE_ALL;
   break;
  case 'M':





   defpaths = optarg;

   break;
  case 'm':
   auxpaths = optarg;
   break;
  case 'O':
   oarg = optarg;
   break;
  case 'S':
   search.arch = optarg;
   break;
  case 's':
   search.sec = optarg;
   break;
  case 'T':
   if (strcmp(optarg, "ascii") == 0)
    curp.outtype = 133;
   else if (strcmp(optarg, "lint") == 0) {
    curp.outtype = OUTT_LINT;
    mandoc_msg_setoutfile(stdout);
    mandoc_msg_setmin(MANDOCERR_BASE);
   } else if (strcmp(optarg, "tree") == 0)
    curp.outtype = OUTT_TREE;
   else if (strcmp(optarg, "man") == 0)
    curp.outtype = OUTT_MAN;
   else if (strcmp(optarg, "html") == 0)
    curp.outtype = 132;
   else if (strcmp(optarg, "markdown") == 0)
    curp.outtype = OUTT_MARKDOWN;
   else if (strcmp(optarg, "utf8") == 0)
    curp.outtype = 128;
   else if (strcmp(optarg, "locale") == 0)
    curp.outtype = 131;
   else if (strcmp(optarg, "ps") == 0)
    curp.outtype = 129;
   else if (strcmp(optarg, "pdf") == 0)
    curp.outtype = 130;
   else {
    mandoc_msg(MANDOCERR_BADARG_BAD, 0, 0,
        "-T %s", optarg);
    return mandoc_msg_getrc();
   }
   break;
  case 'W':
   if (woptions(&curp, optarg) == -1)
    return mandoc_msg_getrc();
   break;
  case 'w':
   outmode = OUTMODE_FLN;
   break;
  default:
   show_usage = 1;
   break;
  }
 }

 if (show_usage)
  usage(search.argmode);



 if (outmode == OUTMODE_DEF) {
  switch (search.argmode) {
  case 135:
   outmode = OUTMODE_ALL;
   use_pager = 0;
   break;
  case 134:
   outmode = OUTMODE_ONE;
   break;
  default:
   outmode = OUTMODE_LST;
   break;
  }
 }

 if (oarg != ((void*)0)) {
  if (outmode == OUTMODE_LST)
   search.outkey = oarg;
  else {
   while (oarg != ((void*)0)) {
    if (manconf_output(&conf.output,
        strsep(&oarg, ","), 0) == -1)
     return mandoc_msg_getrc();
   }
  }
 }

 if (curp.outtype != OUTT_TREE || !curp.outopts->noval)
  options |= MPARSE_VALIDATE;

 if (outmode == OUTMODE_FLN ||
     outmode == OUTMODE_LST ||
     !isatty(STDOUT_FILENO))
  use_pager = 0;

 if (use_pager &&
     (conf.output.width == 0 || conf.output.indent == 0) &&
     ioctl(STDOUT_FILENO, TIOCGWINSZ, &ws) != -1 &&
     ws.ws_col > 1) {
  if (conf.output.width == 0 && ws.ws_col < 79)
   conf.output.width = ws.ws_col - 1;
  if (conf.output.indent == 0 && ws.ws_col < 66)
   conf.output.indent = 3;
 }
 if (argc > 0) {
  argc -= optind;
  argv += optind;
 }
 resp = ((void*)0);






 if (search.argmode == 134) {
  if (*progname == 'h') {
   if (argc == 0) {
    argv = help_argv;
    argc = 1;
   }
  } else if (argc > 1 &&
      ((uc = (unsigned char *)argv[0]) != ((void*)0)) &&
      ((isdigit(uc[0]) && (uc[1] == '\0' ||
        isalpha(uc[1]))) ||
       (uc[0] == 'n' && uc[1] == '\0'))) {
   search.sec = (char *)uc;
   argv++;
   argc--;
  }
  if (search.arch == ((void*)0))
   search.arch = getenv("MACHINE");




 }






 if (conf.output.tag != ((void*)0) && *conf.output.tag == '\0') {
  tagarg = argc > 0 && search.argmode == ARG_EXPR ?
      strchr(*argv, '=') : ((void*)0);
  conf.output.tag = tagarg == ((void*)0) ? *argv : tagarg + 1;
 }



 if (search.argmode != 135) {
  if (search.argmode == 134 &&
      outmode == OUTMODE_ONE)
   search.firstmatch = 1;
  manconf_parse(&conf, conf_file, defpaths, auxpaths);




  if ( ! mansearch(&search, &conf.manpath,
      argc, argv, &res, &sz))
   usage(search.argmode);

  if (sz == 0 && search.argmode == 134)
   (void)fs_search(&search, &conf.manpath,
       argc, argv, &res, &sz);

  if (search.argmode == 134) {
   for (c = 0; c < argc; c++) {
    if (strchr(argv[c], '/') == ((void*)0))
     continue;
    if (access(argv[c], R_OK) == -1) {
     mandoc_msg_setinfilename(argv[c]);
     mandoc_msg(MANDOCERR_BADARG_BAD,
         0, 0, "%s", strerror(errno));
     mandoc_msg_setinfilename(((void*)0));
     continue;
    }
    res = mandoc_reallocarray(res,
        sz + 1, sizeof(*res));
    res[sz].file = mandoc_strdup(argv[c]);
    res[sz].names = ((void*)0);
    res[sz].output = ((void*)0);
    res[sz].bits = 0;
    res[sz].ipath = SIZE_MAX;
    res[sz].sec = 10;
    res[sz].form = FORM_SRC;
    sz++;
   }
  }

  if (sz == 0) {
   if (search.argmode != 134)
    warnx("nothing appropriate");
   mandoc_msg_setrc(MANDOCLEVEL_BADARG);
   goto out;
  }







  if (outmode == OUTMODE_ONE) {
   argc = 1;
   best_prio = 40;
  } else if (outmode == OUTMODE_ALL)
   argc = (int)sz;



  resp = res;
  for (i = 0; i < sz; i++) {
   if (outmode == OUTMODE_FLN)
    puts(res[i].file);
   else if (outmode == OUTMODE_LST)
    printf("%s - %s\n", res[i].names,
        res[i].output == ((void*)0) ? "" :
        res[i].output);
   else if (outmode == OUTMODE_ONE) {

    sec = res[i].file;
    sec += strcspn(sec, "123456789");
    if (sec[0] == '\0')
     continue;
    prio = sec_prios[sec[0] - '1'];
    if (search.sec != ((void*)0)) {
     ssz = strlen(search.sec);
     if (strncmp(sec, search.sec, ssz) == 0)
      sec += ssz;
    } else
     sec++;
    if (*sec != '/')
     prio += 10;
    if (search.sec != ((void*)0) &&
        (strlen(sec) <= ssz + 3 ||
         strcmp(sec + strlen(sec) - ssz,
          search.sec) != 0))
     prio += 20;
    if (prio >= best_prio)
     continue;
    best_prio = prio;
    resp = res + i;
   }
  }







  if (outmode == OUTMODE_FLN || outmode == OUTMODE_LST)
   goto out;
 }
 if (search.argmode == 135 && auxpaths != ((void*)0)) {
  if (strcmp(auxpaths, "doc") == 0)
   options |= MPARSE_MDOC;
  else if (strcmp(auxpaths, "an") == 0)
   options |= MPARSE_MAN;
 }

 mchars_alloc();
 curp.mp = mparse_alloc(options, curp.os_e, curp.os_s);

 if (argc < 1) {
  if (use_pager) {
   tag_files = tag_init();
   if (tag_files != ((void*)0))
    tag_files->tagname = conf.output.tag;
  }
  thisarg = "<stdin>";
  mandoc_msg_setinfilename(thisarg);
  parse(&curp, STDIN_FILENO, thisarg);
  mandoc_msg_setinfilename(((void*)0));
 }
 startdir = open(".", O_RDONLY | O_DIRECTORY);

 while (argc > 0) {






  if (resp != ((void*)0)) {
   if (resp->ipath != SIZE_MAX)
    (void)chdir(conf.manpath.paths[resp->ipath]);
   else if (startdir != -1)
    (void)fchdir(startdir);
   thisarg = resp->file;
  } else
   thisarg = *argv;

  mandoc_msg_setinfilename(thisarg);
  fd = mparse_open(curp.mp, thisarg);
  if (fd != -1) {
   if (use_pager) {
    use_pager = 0;
    tag_files = tag_init();
    if (tag_files != ((void*)0))
     tag_files->tagname = conf.output.tag;
   }

   if (resp == ((void*)0) || resp->form == FORM_SRC)
    parse(&curp, fd, thisarg);
   else
    passthrough(fd, conf.output.synopsisonly);

   if (ferror(stdout)) {
    if (tag_files != ((void*)0)) {
     mandoc_msg(MANDOCERR_WRITE, 0, 0,
         "%s: %s", tag_files->ofn,
         strerror(errno));
     tag_unlink();
     tag_files = ((void*)0);
    } else
     mandoc_msg(MANDOCERR_WRITE, 0, 0,
         "%s", strerror(errno));
    break;
   }

   if (argc > 1 && curp.outtype <= 128) {
    if (curp.outdata == ((void*)0))
     outdata_alloc(&curp);
    terminal_sepline(curp.outdata);
   }
  } else
   mandoc_msg(resp == ((void*)0) ? MANDOCERR_BADARG_BAD :
       MANDOCERR_OPEN, 0, 0, "%s", strerror(errno));

  mandoc_msg_setinfilename(((void*)0));

  if (curp.wstop && mandoc_msg_getrc() != MANDOCLEVEL_OK)
   break;

  if (resp != ((void*)0))
   resp++;
  else
   argv++;
  if (--argc)
   mparse_reset(curp.mp);
 }
 if (startdir != -1) {
  (void)fchdir(startdir);
  close(startdir);
 }

 if (curp.outdata != ((void*)0)) {
  switch (curp.outtype) {
  case 132:
   html_free(curp.outdata);
   break;
  case 128:
  case 131:
  case 133:
   ascii_free(curp.outdata);
   break;
  case 130:
  case 129:
   pspdf_free(curp.outdata);
   break;
  default:
   break;
  }
 }
 mandoc_xr_free();
 mparse_free(curp.mp);
 mchars_free();

out:
 if (search.argmode != 135) {
  manconf_free(&conf);
  mansearch_free(res, sz);
 }

 free(curp.os_s);






 if (tag_files != ((void*)0)) {
  fclose(stdout);
  tag_write();
  man_pgid = getpgid(0);
  tag_files->tcpgid = man_pgid == getpid() ?
      getpgid(getppid()) : man_pgid;
  pager_pid = 0;
  signum = SIGSTOP;
  for (;;) {



   tc_pgid = tcgetpgrp(tag_files->ofd);
   if (tc_pgid != man_pgid) {
    if (tc_pgid == pager_pid) {
     (void)tcsetpgrp(tag_files->ofd,
         man_pgid);
     if (signum == SIGTTIN)
      continue;
    } else
     tag_files->tcpgid = tc_pgid;
    kill(0, signum);
    continue;
   }



   if (pager_pid) {
    (void)tcsetpgrp(tag_files->ofd, pager_pid);
    kill(pager_pid, SIGCONT);
   } else
    pager_pid = spawn_pager(tag_files);



   while ((pid = waitpid(pager_pid, &status,
       WUNTRACED)) == -1 && errno == EINTR)
    continue;

   if (pid == -1) {
    mandoc_msg(MANDOCERR_WAIT, 0, 0,
        "%s", strerror(errno));
    break;
   }
   if (!WIFSTOPPED(status))
    break;

   signum = WSTOPSIG(status);
  }
  tag_unlink();
 } else if (curp.outtype != OUTT_LINT &&
     (search.argmode == 135 || sz > 0))
  mandoc_msg_summary();

 return (int)mandoc_msg_getrc();
}
