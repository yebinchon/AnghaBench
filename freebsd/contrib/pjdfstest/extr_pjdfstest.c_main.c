
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_desc {int dummy; } ;


 unsigned int call_syscall (struct syscall_desc*,char**) ;
 int errno ;
 int exit (int) ;
 struct syscall_desc* find_syscall (char*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int isspace (unsigned char) ;
 char* optarg ;
 scalar_t__ optind ;
 int set_gids (char*) ;
 scalar_t__ setuid (int) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ strtol (char*,char**,int ) ;
 int umask (int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct syscall_desc *scall;
 unsigned int n;
 char *gids, *endp;
 int uid, umsk, ch;

 uid = -1;
 gids = ((void*)0);
 umsk = 0;

 while ((ch = getopt(argc, argv, "g:u:U:")) != -1) {
  switch(ch) {
  case 'g':
   gids = optarg;
   break;
  case 'u':
   uid = (int)strtol(optarg, &endp, 0);
   if (*endp != '\0' && !isspace((unsigned char)*endp)) {
    fprintf(stderr, "invalid uid '%s' - number "
        "expected\n", optarg);
    exit(1);
   }
   break;
  case 'U':
   umsk = (int)strtol(optarg, &endp, 0);
   if (*endp != '\0' && !isspace((unsigned char)*endp)) {
    fprintf(stderr, "invalid umask '%s' - number "
        "expected\n", optarg);
    exit(1);
   }
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc < 1) {
  fprintf(stderr, "too few arguments\n");
  usage();
 }

 if (gids != ((void*)0)) {
  fprintf(stderr, "changing groups to %s\n", gids);
  set_gids(gids);
 }
 if (uid != -1) {
  fprintf(stderr, "changing uid to %d\n", uid);
  if (setuid(uid) < 0) {
   fprintf(stderr, "cannot change uid: %s\n",
       strerror(errno));
   exit(1);
  }
 }


 umask(umsk);

 for (;;) {
  scall = find_syscall(argv[0]);
  if (scall == ((void*)0)) {
   fprintf(stderr, "syscall '%s' not supported\n",
       argv[0]);
   exit(1);
  }
  argc++;
  argv++;
  n = call_syscall(scall, argv);
  argc += n;
  argv += n;
  if (argv[0] == ((void*)0))
   break;
  argc++;
  argv++;
 }

 exit(0);
}
