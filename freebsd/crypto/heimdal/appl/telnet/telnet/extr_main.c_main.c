
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EncryptVerbose (int) ;
 int Exit (int ) ;
 int SetNetTrace (char*) ;
 int TerminalSaveState () ;
 char _POSIX_VDISABLE ;
 int auth_disable_name (char*) ;
 int autologin ;
 int binary ;
 int command (int,int ,int ) ;
 int debug ;
 int decrypt_auto (int) ;
 int eight ;
 int encrypt_auto (int) ;
 int env_define (unsigned char*,unsigned char*) ;
 char escape ;
 int exit (int ) ;
 int forward_option ;
 int fprintf (int ,char*,char*,...) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int krb5_init () ;
 char* optarg ;
 scalar_t__ optind ;
 int parsetos (char*,char*) ;
 int print_version (int *) ;
 char* prompt ;
 char rlogin ;
 int set_escape_char (char*) ;
 scalar_t__ setjmp (int ) ;
 int setprogname (char*) ;
 int skiprc ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int tn (int,char**) ;
 int tninit () ;
 int toplevel ;
 int usage (int) ;
 int wantencryption ;

int
main(int argc, char **argv)
{
 int ch;
 char *user;

 setprogname(argv[0]);





 tninit();

 TerminalSaveState();

 if ((prompt = strrchr(argv[0], '/')))
  ++prompt;
 else
  prompt = argv[0];

 user = ((void*)0);

 rlogin = (strncmp(prompt, "rlog", 4) == 0) ? '~' : _POSIX_VDISABLE;






 autologin = -1;

 if (argc == 2 && strcmp(argv[1], "--version") == 0) {
     print_version(((void*)0));
     exit(0);
 }
 if (argc == 2 && strcmp(argv[1], "--help") == 0)
     usage(0);


 while((ch = getopt(argc, argv,
      "78DEKLS:X:abcde:fFk:l:n:rxG")) != -1) {
  switch(ch) {
  case '8':
   eight = 3;
   break;
  case '7':
   eight = 0;
   break;
  case 'b':
      binary = 3;
      break;
  case 'D': {

      char *p;
      if((p = getenv("DISPLAY")))
   env_define((unsigned char*)"DISPLAY", (unsigned char*)p);
      break;
  }
  case 'E':
   rlogin = escape = _POSIX_VDISABLE;
   break;
  case 'K':



   break;
  case 'L':
   eight |= 2;
   break;
  case 'S':
      {
   fprintf(stderr,
      "%s: Warning: -S ignored, no parsetos() support.\n",
        prompt);

      }
   break;
  case 'X':



   break;
  case 'a':
   autologin = 1;
   break;
  case 'c':
   skiprc = 1;
   break;
  case 'd':
   debug = 1;
   break;
  case 'e':
   set_escape_char(optarg);
   break;
  case 'f':
  case 'F':
  case 'G':
   fprintf(stderr,
    "%s: Warning: -%c ignored, no Kerberos V5 support.\n",
    prompt, ch);

   break;
  case 'k':
      fprintf(stderr,
       "%s: Warning: -k ignored, no Kerberos V4 support.\n",
       prompt);
      break;
  case 'l':
    if(autologin == 0){
      fprintf(stderr, "%s: Warning: -K ignored\n", prompt);
      autologin = -1;
    }
   user = optarg;
   break;
  case 'n':
    SetNetTrace(optarg);
   break;
  case 'r':
   rlogin = '~';
   break;
  case 'x':






   fprintf(stderr,
       "%s: Warning: -x ignored, no ENCRYPT support.\n",
        prompt);

   break;

  case '?':
  default:
   usage(1);

  }
 }

 if (autologin == -1) {
 }

 if (autologin == -1)
  autologin = (rlogin == _POSIX_VDISABLE) ? 0 : 1;

 argc -= optind;
 argv += optind;

 if (argc) {
  char *args[7], **argp = args;

  if (argc > 2)
   usage(1);
  *argp++ = prompt;
  if (user) {
   *argp++ = "-l";
   *argp++ = user;
  }
  *argp++ = argv[0];
  if (argc > 1)
   *argp++ = argv[1];
  *argp = 0;

  if (setjmp(toplevel) != 0)
   Exit(0);
  if (tn(argp - args, args) == 1)
   return (0);
  else
   return (1);
 }
 setjmp(toplevel);
 for (;;) {
   command(1, 0, 0);
 }
}
